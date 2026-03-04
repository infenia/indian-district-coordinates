# Indian District Coordinates

A repository for Indian district boundaries and their calculated centroid coordinates. This project allows converting complex TopoJSON boundary data into lightweight centroid coordinates suitable for map markers and geo-coordinate searches in databases.

## � Data Source

The boundary data used in this project is sourced from the [DataMeet Indian District Boundaries](https://github.com/datameet/indian-district-boundaries/tree/master/topojson) repository.

## �📁 Directory Structure

- `json/boundary/`: Contains the raw TopoJSON boundary data (e.g., `india-districts-2019-734.json`).
- `json/centroids/`: Contains the generated centroid coordinates in both standard JSON and GeoJSON formats.
- `scripts/`: Python scripts for data processing and SQL generation.
- `sql/`: Generated PostgreSQL migration scripts.

## 🚀 Usage

### 1. Generate Centroids
Convert the boundary TopoJSON into centroid points (Longitude/Latitude). This script calculates the geometric center of each district polygon (including handling for MultiPolygons and holes).

```bash
python3 scripts/convert_to_centroids.py
```
**Outputs:**
- `json/centroids/india-districts-centroids-2019.json`: Clean list of district objects.
- `json/centroids/india-districts-centroids-2019.geojson`: FeatureCollection for easy viewing in map tools like [geojson.io](https://geojson.io).

### 2. Generate PostgreSQL Script
Generate a PostgreSQL-compatible SQL script for loading data. This script creates the necessary table, enables PostGIS, and performs an UPSERT.

```bash
python3 scripts/generate_postgre_sql.py
```
**Output:**
- `sql/upsert_districts.sql`: SQL migration file.

## 🗄️ Database Integration

The generated SQL script is optimized for:
- **Geo-coordinate searches**: Uses the PostGIS `GEOMETRY` type.
- **Fast retrieval**: Includes a B-tree index on `district_name` and a GIST spatial index on the `geom` column.
- **Data Integrity**: Uses `ON CONFLICT` to handle updates naturally.
- **Normalization**: Automatically saves district and state names in lower case for easier searching.

### Loading Data
```bash
psql -h localhost -U your_user -d your_db -f sql/upsert_districts.sql
```

## 🛠️ Requirements
- Python 3.x
- No external Python dependencies required (pure standard library implementation).
- **PostgreSQL** + **PostGIS** (if loading the SQL script).

## 📄 License
This project is licensed under the MIT License.