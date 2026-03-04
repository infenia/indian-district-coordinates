#!/usr/bin/env python3
import json
import os
import sys

def generate_sql():
    repo_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    input_file = os.path.join(repo_root, 'json', 'centroids', 'india-districts-centroids-2019.json')
    output_dir = os.path.join(repo_root, 'sql')
    output_file = os.path.join(output_dir, 'upsert_districts.sql')

    if not os.path.exists(input_file):
        print(f"Error: Input file {input_file} not found. Run convert_to_centroids.py first.")
        sys.exit(1)

    print(f"Reading {input_file}...")
    with open(input_file, 'r') as f:
        districts = json.load(f)

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    sql_statements = []
    
    # 1. Table Creation Script
    # Using PostGIS geometry for optimized geo-searches
    # Storing names in lower-case as requested
    # UNIQUE constraint on (st_code, dt_code) to allow UPSERT
    create_table = """-- Enable PostGIS extension for geo-coordinate searches
CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS indian_district_centroids (
    id SERIAL PRIMARY KEY,
    district_name TEXT NOT NULL,
    state_name TEXT NOT NULL,
    district_code TEXT NOT NULL,
    state_code TEXT NOT NULL,
    longitude NUMERIC NOT NULL,
    latitude NUMERIC NOT NULL,
    geom GEOMETRY(Point, 4326),
    UNIQUE (state_code, district_code)
);

-- Optimize retrieval by district name
CREATE INDEX IF NOT EXISTS idx_districts_name_lower ON indian_district_centroids (district_name);

-- Optimize geo-spatial searches
CREATE INDEX IF NOT EXISTS idx_districts_geom ON indian_district_centroids USING GIST (geom);

-- UPSERT Data
"""
    sql_statements.append(create_table)

    # 2. Generate UPSERT Statements
    print(f"Generating SQL for {len(districts)} districts...")
    for d in districts:
        # Lowercase the names
        district = d['district'].lower().replace("'", "''")
        state = d['st_nm'].lower().replace("'", "''")
        dt_code = d['dt_code']
        st_code = d['st_code']
        lon = d['longitude']
        lat = d['latitude']

        upsert = f"""INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('{district}', '{state}', '{dt_code}', '{st_code}', {lon}, {lat}, ST_SetSRID(ST_MakePoint({lon}, {lat}), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;
"""
        sql_statements.append(upsert)

    with open(output_file, 'w') as f:
        f.write("\n".join(sql_statements))

    print(f"Successfully generated PostgreSQL script: {output_file}")

if __name__ == "__main__":
    generate_sql()
