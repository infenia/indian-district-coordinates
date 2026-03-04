#!/usr/bin/env python3
import json
import os
import sys

def decode_arc(arc_indices, topology_arcs, transform):
    """
    Decodes a TopoJSON arc or list of arcs into GeoJSON-style coordinates.
    """
    scale = transform['scale']
    translate = transform['translate']
    
    # In TopoJSON, negative indices indicate reversed arcs starting from the end
    coords = []
    
    # If arc_indices is actually a single integer, make it a list
    if isinstance(arc_indices, int):
        arc_indices = [arc_indices]

    for idx in arc_indices:
        is_reversed = idx < 0
        if is_reversed:
            idx = ~idx
            
        arc = topology_arcs[idx]
        
        # Current point track for quantization
        curr_x, curr_y = 0, 0
        arc_points = []
        
        for dx, dy in arc:
            curr_x += dx
            curr_y += dy
            # Apply transform
            lon = curr_x * scale[0] + translate[0]
            lat = curr_y * scale[1] + translate[1]
            arc_points.append((lon, lat))
            
        if is_reversed:
            arc_points.reverse()
            
        # Avoid duplicate points when stitching arcs
        if coords and arc_points and coords[-1] == arc_points[0]:
            coords.extend(arc_points[1:])
        else:
            coords.extend(arc_points)
            
    return coords

def get_polygon_area_and_centroid(polygon_coords):
    """
    Calculates the area and centroid of a polygon using the shoelace formula.
    polygon_coords is a list of [lon, lat] points (outer ring).
    """
    area = 0.0
    cx = 0.0
    cy = 0.0
    
    # Outer ring is the first list in polygon_coords if it's GeoJSON style [[[...]]]
    # but our decode_arc returns a flattened list of points for one ring.
    # Handling holes would require subtracting their areas/moments, 
    # but for district centroids, the outer ring is usually sufficient or holes are small.
    # We'll treat common Polygon input as a list of rings.
    
    # For TopoJSON Polygons, 'arcs' is a list of lists of arc indices.
    # The first list is the outer ring, subsequent are holes.
    
    # shoelace formula for area and centroid
    n = len(polygon_coords)
    if n < 3:
        return 0, 0, 0
    
    for i in range(n):
        j = (i + 1) % n
        p1 = polygon_coords[i]
        p2 = polygon_coords[j]
        
        common = p1[0] * p2[1] - p2[0] * p1[1]
        area += common
        cx += (p1[0] + p2[0]) * common
        cy += (p1[1] + p2[1]) * common
        
    area = area / 2.0
    if abs(area) < 1e-10:
        # Fallback to arithmetic mean for degenerate polygons
        lons = [p[0] for p in polygon_coords]
        lats = [p[1] for p in polygon_coords]
        return 0, sum(lons)/n, sum(lats)/n
        
    cx = cx / (6.0 * area)
    cy = cy / (6.0 * area)
    
    return abs(area), cx, cy

def main():
    repo_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    input_file = os.path.join(repo_root, 'json', 'boundary', 'india-districts-2019-734.json')
    output_dir = os.path.join(repo_root, 'json', 'centroids')
    output_file_json = os.path.join(output_dir, 'india-districts-centroids-2019.json')
    output_file_geojson = os.path.join(output_dir, 'india-districts-centroids-2019.geojson')

    if not os.path.exists(input_file):
        print(f"Error: Input file {input_file} not found.")
        sys.exit(1)

    print(f"Reading {input_file}...")
    with open(input_file, 'r') as f:
        topology = json.load(f)

    transform = topology['transform']
    arcs = topology['arcs']
    
    # Find the object name dynamically
    object_name = list(topology['objects'].keys())[0]
    geometries = topology['objects'][object_name]['geometries']
    
    results = []

    print(f"Processing {len(geometries)} districts...")
    for geom in geometries:
        props = geom.get('properties', {})
        geom_type = geom['type']
        
        total_area = 0
        weighted_cx = 0
        weighted_cy = 0
        
        rings_to_process = []
        if geom_type == 'Polygon':
            # Geometry arcs for Polygon is a list of lists of arc indices
            rings_to_process = [geom['arcs']]
        elif geom_type == 'MultiPolygon':
            # Geometry arcs for MultiPolygon is a list of lists of lists
            rings_to_process = geom['arcs']
            
        for polygon_arcs in rings_to_process:
            # First ring in polygon_arcs is outer ring
            outer_ring_indices = polygon_arcs[0]
            coords = decode_arc(outer_ring_indices, arcs, transform)
            
            p_area, p_cx, p_cy = get_polygon_area_and_centroid(coords)
            
            # Subtract holes if they exist
            for hole_indices in polygon_arcs[1:]:
                h_coords = decode_arc(hole_indices, arcs, transform)
                h_area, h_cx, h_cy = get_polygon_area_and_centroid(h_coords)
                # Area of hole should be subtracted
                # Note: Shoelace returns signed area which might be negative for clockwise rings
                # TopoJSON rings are usually CCW for outer, CW for inner but we take abs(area)
                p_area -= h_area
                # Adjust weighted centroid (not exactly correct if area signs are mixed but common enough)
                # Actually moments add/subtract linearly: Cx*A - Hcx*Ha
            
            total_area += p_area
            weighted_cx += p_cx * p_area
            weighted_cy += p_cy * p_area

        if total_area > 0:
            final_cx = weighted_cx / total_area
            final_cy = weighted_cy / total_area
        else:
            # Final fallback if area is 0
            final_cx, final_cy = 0, 0

        district_data = {
            "district": props.get("district"),
            "dt_code": props.get("dt_code"),
            "st_nm": props.get("st_nm"),
            "st_code": props.get("st_code"),
            "longitude": round(final_cx, 6),
            "latitude": round(final_cy, 6)
        }
        results.append(district_data)

    # Prepare GeoJSON structure
    geojson_features = []
    for d in results:
        feature = {
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [d["longitude"], d["latitude"]]
            },
            "properties": {
                "district": d["district"],
                "dt_code": d["dt_code"],
                "st_nm": d["st_nm"],
                "st_code": d["st_code"]
            }
        }
        geojson_features.append(feature)

    geojson_data = {
        "type": "FeatureCollection",
        "features": geojson_features
    }

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    with open(output_file_json, 'w') as f:
        json.dump(results, f, indent=2)

    with open(output_file_geojson, 'w') as f:
        json.dump(geojson_data, f, indent=2)

    print(f"Successfully saved {len(results)} district centroids to:")
    print(f"  JSON:    {output_file_json}")
    print(f"  GeoJSON: {output_file_geojson}")

if __name__ == "__main__":
    main()
