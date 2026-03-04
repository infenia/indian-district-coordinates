-- Enable PostGIS extension for geo-coordinate searches
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

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('aizawal', 'mizoram', '261', '15', 92.889533, 23.811879, ST_SetSRID(ST_MakePoint(92.889533, 23.811879), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('champhai', 'mizoram', '262', '15', 93.262456, 23.543088, ST_SetSRID(ST_MakePoint(93.262456, 23.543088), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kolasib', 'mizoram', '263', '15', 92.726158, 24.197696, ST_SetSRID(ST_MakePoint(92.726158, 24.197696), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lawngtlai', 'mizoram', '264', '15', 92.711439, 22.38375, ST_SetSRID(ST_MakePoint(92.711439, 22.38375), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lunglei', 'mizoram', '265', '15', 92.6533, 22.9774, ST_SetSRID(ST_MakePoint(92.6533, 22.9774), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mamit', 'mizoram', '266', '15', 92.464654, 23.752395, ST_SetSRID(ST_MakePoint(92.464654, 23.752395), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('saiha', 'mizoram', '267', '15', 93.012125, 22.376941, ST_SetSRID(ST_MakePoint(93.012125, 22.376941), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('serchhip', 'mizoram', '268', '15', 92.959196, 23.265941, ST_SetSRID(ST_MakePoint(92.959196, 23.265941), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('khawzawl', 'mizoram', '996', '15', 93.190747, 23.502316, ST_SetSRID(ST_MakePoint(93.190747, 23.502316), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hnahthial', 'mizoram', '994', '15', 92.986919, 22.953637, ST_SetSRID(ST_MakePoint(92.986919, 22.953637), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thiruvallur', 'tamil nadu', '602', '33', 79.94659, 13.238959, ST_SetSRID(ST_MakePoint(79.94659, 13.238959), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chennai', 'tamil nadu', '603', '33', 80.224592, 13.008973, ST_SetSRID(ST_MakePoint(80.224592, 13.008973), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('krishnagiri', 'tamil nadu', '631', '33', 78.030402, 12.491345, ST_SetSRID(ST_MakePoint(78.030402, 12.491345), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tiruvannamalai', 'tamil nadu', '606', '33', 79.166162, 12.432412, ST_SetSRID(ST_MakePoint(79.166162, 12.432412), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dharmapuri', 'tamil nadu', '630', '33', 78.19357, 12.100746, ST_SetSRID(ST_MakePoint(78.19357, 12.100746), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('salem', 'tamil nadu', '608', '33', 78.22251, 11.677701, ST_SetSRID(ST_MakePoint(78.22251, 11.677701), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('erode', 'tamil nadu', '610', '33', 77.412293, 11.518855, ST_SetSRID(ST_MakePoint(77.412293, 11.518855), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('the nilgiris', 'tamil nadu', '611', '33', 76.639508, 11.456029, ST_SetSRID(ST_MakePoint(76.639508, 11.456029), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('namakkal', 'tamil nadu', '609', '33', 78.135602, 11.31884, ST_SetSRID(ST_MakePoint(78.135602, 11.31884), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('perambalur', 'tamil nadu', '615', '33', 78.890302, 11.274539, ST_SetSRID(ST_MakePoint(78.890302, 11.274539), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('coimbatore', 'tamil nadu', '632', '33', 76.975008, 10.876395, ST_SetSRID(ST_MakePoint(76.975008, 10.876395), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tiruchirappalli', 'tamil nadu', '614', '33', 78.56997, 10.891061, ST_SetSRID(ST_MakePoint(78.56997, 10.891061), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ariyalur', 'tamil nadu', '616', '33', 79.242389, 11.162221, ST_SetSRID(ST_MakePoint(79.242389, 11.162221), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tiruppur', 'tamil nadu', '633', '33', 77.406968, 10.838869, ST_SetSRID(ST_MakePoint(77.406968, 10.838869), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thanjavur', 'tamil nadu', '620', '33', 79.240682, 10.67148, ST_SetSRID(ST_MakePoint(79.240682, 10.67148), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karur', 'tamil nadu', '613', '33', 78.134513, 10.844374, ST_SetSRID(ST_MakePoint(78.134513, 10.844374), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thiruvarur', 'tamil nadu', '619', '33', 79.52933, 10.702806, ST_SetSRID(ST_MakePoint(79.52933, 10.702806), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dindigul', 'tamil nadu', '612', '33', 77.819517, 10.391787, ST_SetSRID(ST_MakePoint(77.819517, 10.391787), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('madurai', 'tamil nadu', '623', '33', 78.005054, 9.922847, ST_SetSRID(ST_MakePoint(78.005054, 9.922847), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('theni', 'tamil nadu', '624', '33', 77.438063, 9.892099, ST_SetSRID(ST_MakePoint(77.438063, 9.892099), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('virudhunagar', 'tamil nadu', '625', '33', 77.905804, 9.492213, ST_SetSRID(ST_MakePoint(77.905804, 9.492213), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thoothukkudi', 'tamil nadu', '627', '33', 78.004138, 8.891313, ST_SetSRID(ST_MakePoint(78.004138, 8.891313), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kanniyakumari', 'tamil nadu', '629', '33', 77.359994, 8.307063, ST_SetSRID(ST_MakePoint(77.359994, 8.307063), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('viluppuram', 'tamil nadu', '607', '33', 79.530709, 12.118375, ST_SetSRID(ST_MakePoint(79.530709, 12.118375), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('cuddalore', 'tamil nadu', '617', '33', 79.450546, 11.536239, ST_SetSRID(ST_MakePoint(79.450546, 11.536239), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pudukkottai', 'tamil nadu', '621', '33', 78.878974, 10.360108, ST_SetSRID(ST_MakePoint(78.878974, 10.360108), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sivaganga', 'tamil nadu', '622', '33', 78.590431, 9.919792, ST_SetSRID(ST_MakePoint(78.590431, 9.919792), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ramanathapuram', 'tamil nadu', '626', '33', 78.690659, 9.448616, ST_SetSRID(ST_MakePoint(78.690659, 9.448616), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nagapattinam', 'tamil nadu', '618', '33', 79.729216, 10.809471, ST_SetSRID(ST_MakePoint(79.729216, 10.809471), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kallakurichi', 'tamil nadu', '729', '33', 79.010565, 11.797772, ST_SetSRID(ST_MakePoint(79.010565, 11.797772), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tenkasi', 'tamil nadu', '0', '33', 77.459482, 9.087341, ST_SetSRID(ST_MakePoint(77.459482, 9.087341), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tirunelveli', 'tamil nadu', '628', '33', 77.603244, 8.574981, ST_SetSRID(ST_MakePoint(77.603244, 8.574981), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vellore', 'tamil nadu', '605', '33', 78.953929, 12.9005, ST_SetSRID(ST_MakePoint(78.953929, 12.9005), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ranipet', 'tamil nadu', '0', '33', 79.459102, 12.952261, ST_SetSRID(ST_MakePoint(79.459102, 12.952261), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tirupathur', 'tamil nadu', '0', '33', 78.643685, 12.584521, ST_SetSRID(ST_MakePoint(78.643685, 12.584521), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kancheepuram', 'tamil nadu', '604', '33', 79.827716, 12.826313, ST_SetSRID(ST_MakePoint(79.827716, 12.826313), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chengalpattu', 'tamil nadu', '0', '33', 79.996525, 12.573553, ST_SetSRID(ST_MakePoint(79.996525, 12.573553), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('burhanpur', 'madhya pradesh', '467', '23', 76.36982, 21.369876, ST_SetSRID(ST_MakePoint(76.36982, 21.369876), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gondiya', 'maharashtra', '507', '27', 80.212109, 21.159078, ST_SetSRID(ST_MakePoint(80.212109, 21.159078), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhandara', 'maharashtra', '506', '27', 79.758865, 21.122227, ST_SetSRID(ST_MakePoint(79.758865, 21.122227), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jalgaon', 'maharashtra', '499', '27', 75.486676, 20.933503, ST_SetSRID(ST_MakePoint(75.486676, 20.933503), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahasamund', 'chhattisgarh', '411', '22', 82.608017, 21.20778, ST_SetSRID(ST_MakePoint(82.608017, 21.20778), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('wardha', 'maharashtra', '504', '27', 78.585985, 20.797129, ST_SetSRID(ST_MakePoint(78.585985, 20.797129), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('buldana', 'maharashtra', '500', '27', 76.407359, 20.510972, ST_SetSRID(ST_MakePoint(76.407359, 20.510972), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('valsad', 'gujarat', '491', '24', 73.11924, 20.417675, ST_SetSRID(ST_MakePoint(73.11924, 20.417675), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('akola', 'maharashtra', '501', '27', 77.054603, 20.747824, ST_SetSRID(ST_MakePoint(77.054603, 20.747824), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhadrak', 'odisha', '378', '21', 86.62686, 20.983139, ST_SetSRID(ST_MakePoint(86.62686, 20.983139), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhenkanal', 'odisha', '383', '21', 85.524169, 20.827062, ST_SetSRID(ST_MakePoint(85.524169, 20.827062), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jajapur', 'odisha', '382', '21', 86.14929, 20.855542, ST_SetSRID(ST_MakePoint(86.14929, 20.855542), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('subarnapur', 'odisha', '392', '21', 83.822305, 20.930601, ST_SetSRID(ST_MakePoint(83.822305, 20.930601), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nuapada', 'odisha', '394', '21', 82.577243, 20.465319, ST_SetSRID(ST_MakePoint(82.577243, 20.465319), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('balangir', 'odisha', '393', '21', 83.171298, 20.588521, ST_SetSRID(ST_MakePoint(83.171298, 20.588521), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nashik', 'maharashtra', '516', '27', 74.071112, 20.259569, ST_SetSRID(ST_MakePoint(74.071112, 20.259569), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baudh', 'odisha', '391', '21', 84.172743, 20.644199, ST_SetSRID(ST_MakePoint(84.172743, 20.644199), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gadchiroli', 'maharashtra', '508', '27', 80.240493, 19.788281, ST_SetSRID(ST_MakePoint(80.240493, 19.788281), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('washim', 'maharashtra', '502', '27', 77.216132, 20.234106, ST_SetSRID(ST_MakePoint(77.216132, 20.234106), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('cuttack', 'odisha', '381', '21', 85.697252, 20.453046, ST_SetSRID(ST_MakePoint(85.697252, 20.453046), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chandrapur', 'maharashtra', '509', '27', 79.440062, 20.118216, ST_SetSRID(ST_MakePoint(79.440062, 20.118216), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('yavatmal', 'maharashtra', '510', '27', 78.161022, 20.082976, ST_SetSRID(ST_MakePoint(78.161022, 20.082976), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kandhamal', 'odisha', '390', '21', 84.045669, 20.128119, ST_SetSRID(ST_MakePoint(84.045669, 20.128119), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jalna', 'maharashtra', '514', '27', 75.980456, 19.808316, ST_SetSRID(ST_MakePoint(75.980456, 19.808316), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nayagarh', 'odisha', '385', '21', 84.998586, 20.212545, ST_SetSRID(ST_MakePoint(84.998586, 20.212545), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('uttar bastar kanker', 'chhattisgarh', '413', '22', 81.122754, 20.137452, ST_SetSRID(ST_MakePoint(81.122754, 20.137452), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('khordha', 'odisha', '386', '21', 85.516712, 20.09216, ST_SetSRID(ST_MakePoint(85.516712, 20.09216), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kalahandi', 'odisha', '395', '21', 83.108286, 19.867261, ST_SetSRID(ST_MakePoint(83.108286, 19.867261), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jagatsinghapur', 'odisha', '380', '21', 86.336663, 20.219103, ST_SetSRID(ST_MakePoint(86.336663, 20.219103), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('puri', 'odisha', '387', '21', 85.725074, 19.878318, ST_SetSRID(ST_MakePoint(85.725074, 19.878318), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ahmadnagar', 'maharashtra', '522', '27', 74.675117, 19.204544, ST_SetSRID(ST_MakePoint(74.675117, 19.204544), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nabarangapur', 'odisha', '397', '21', 82.334432, 19.576372, ST_SetSRID(ST_MakePoint(82.334432, 19.576372), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hingoli', 'maharashtra', '512', '27', 77.100911, 19.620675, ST_SetSRID(ST_MakePoint(77.100911, 19.620675), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rayagada', 'odisha', '396', '21', 83.512514, 19.363293, ST_SetSRID(ST_MakePoint(83.512514, 19.363293), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nanded', 'maharashtra', '511', '27', 77.617036, 19.11088, ST_SetSRID(ST_MakePoint(77.617036, 19.11088), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('narayanpur', 'chhattisgarh', '415', '22', 81.08673, 19.569984, ST_SetSRID(ST_MakePoint(81.08673, 19.569984), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('parbhani', 'maharashtra', '513', '27', 76.677897, 19.271538, ST_SetSRID(ST_MakePoint(76.677897, 19.271538), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pune', 'maharashtra', '521', '27', 74.068503, 18.570762, ST_SetSRID(ST_MakePoint(74.068503, 18.570762), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bid', 'maharashtra', '523', '27', 75.8376, 18.946276, ST_SetSRID(ST_MakePoint(75.8376, 18.946276), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mumbai', 'maharashtra', '519', '27', 72.851164, 18.962258, ST_SetSRID(ST_MakePoint(72.851164, 18.962258), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('koraput', 'odisha', '398', '21', 82.71879, 18.813532, ST_SetSRID(ST_MakePoint(82.71879, 18.813532), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('srikakulam', 'andhra pradesh', '542', '37', 84.023766, 18.598297, ST_SetSRID(ST_MakePoint(84.023766, 18.598297), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vizianagaram', 'andhra pradesh', '543', '37', 83.38478, 18.474201, ST_SetSRID(ST_MakePoint(83.38478, 18.474201), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('latur', 'maharashtra', '524', '27', 76.759402, 18.37391, ST_SetSRID(ST_MakePoint(76.759402, 18.37391), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('osmanabad', 'maharashtra', '525', '27', 76.03765, 18.188079, ST_SetSRID(ST_MakePoint(76.03765, 18.188079), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('malkangiri', 'odisha', '399', '21', 81.950107, 18.258599, ST_SetSRID(ST_MakePoint(81.950107, 18.258599), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('solapur', 'maharashtra', '526', '27', 75.483645, 17.790177, ST_SetSRID(ST_MakePoint(75.483645, 17.790177), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('visakhapatnam', 'andhra pradesh', '544', '37', 82.694387, 17.893688, ST_SetSRID(ST_MakePoint(82.694387, 17.893688), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bidar', 'karnataka', '558', '29', 77.224346, 17.951514, ST_SetSRID(ST_MakePoint(77.224346, 17.951514), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('satara', 'maharashtra', '527', '27', 74.172483, 17.669555, ST_SetSRID(ST_MakePoint(74.172483, 17.669555), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ratnagiri', 'maharashtra', '528', '27', 73.455195, 17.273221, ST_SetSRID(ST_MakePoint(73.455195, 17.273221), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kalaburagi', 'karnataka', '579', '29', 76.868623, 17.259886, ST_SetSRID(ST_MakePoint(76.868623, 17.259886), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sangli', 'maharashtra', '531', '27', 74.768136, 17.113153, ST_SetSRID(ST_MakePoint(74.768136, 17.113153), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kolhapur', 'maharashtra', '530', '27', 74.157672, 16.470164, ST_SetSRID(ST_MakePoint(74.157672, 16.470164), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('krishna', 'andhra pradesh', '547', '37', 80.798313, 16.555644, ST_SetSRID(ST_MakePoint(80.798313, 16.555644), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('belagavi', 'karnataka', '555', '29', 74.823682, 16.121201, ST_SetSRID(ST_MakePoint(74.823682, 16.121201), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('yadgir', 'karnataka', '580', '29', 76.913648, 16.627076, ST_SetSRID(ST_MakePoint(76.913648, 16.627076), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bagalkote', 'karnataka', '556', '29', 75.62583, 16.220685, ST_SetSRID(ST_MakePoint(75.62583, 16.220685), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sindhudurg', 'maharashtra', '529', '27', 73.738371, 16.132203, ST_SetSRID(ST_MakePoint(73.738371, 16.132203), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('guntur', 'andhra pradesh', '548', '37', 80.078627, 16.293178, ST_SetSRID(ST_MakePoint(80.078627, 16.293178), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east godavari', 'andhra pradesh', '545', '37', 81.896776, 17.268601, ST_SetSRID(ST_MakePoint(81.896776, 17.268601), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('raichur', 'karnataka', '559', '29', 76.89153, 16.090361, ST_SetSRID(ST_MakePoint(76.89153, 16.090361), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('prakasam', 'andhra pradesh', '549', '37', 79.516277, 15.616199, ST_SetSRID(ST_MakePoint(79.516277, 15.616199), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kurnool', 'andhra pradesh', '552', '37', 77.999348, 15.532089, ST_SetSRID(ST_MakePoint(77.999348, 15.532089), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('koppal', 'karnataka', '560', '29', 76.220478, 15.563044, ST_SetSRID(ST_MakePoint(76.220478, 15.563044), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gadag', 'karnataka', '561', '29', 75.664816, 15.43068, ST_SetSRID(ST_MakePoint(75.664816, 15.43068), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north goa', 'goa', '585', '30', 73.974238, 15.580162, ST_SetSRID(ST_MakePoint(73.974238, 15.580162), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ballari', 'karnataka', '565', '29', 76.531537, 15.109603, ST_SetSRID(ST_MakePoint(76.531537, 15.109603), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dharwad', 'karnataka', '562', '29', 75.152244, 15.390009, ST_SetSRID(ST_MakePoint(75.152244, 15.390009), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('uttara kannada', 'karnataka', '563', '29', 74.619456, 14.791838, ST_SetSRID(ST_MakePoint(74.619456, 14.791838), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south goa', 'goa', '586', '30', 74.105373, 15.221929, ST_SetSRID(ST_MakePoint(74.105373, 15.221929), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('haveri', 'karnataka', '564', '29', 75.416543, 14.739193, ST_SetSRID(ST_MakePoint(75.416543, 14.739193), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('anantapur', 'andhra pradesh', '553', '37', 77.572655, 14.480622, ST_SetSRID(ST_MakePoint(77.572655, 14.480622), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('s.p.s. nellore', 'andhra pradesh', '550', '37', 79.739669, 14.418429, ST_SetSRID(ST_MakePoint(79.739669, 14.418429), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chitradurga', 'karnataka', '566', '29', 76.514955, 14.168606, ST_SetSRID(ST_MakePoint(76.514955, 14.168606), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('davanagere', 'karnataka', '567', '29', 75.954034, 14.408701, ST_SetSRID(ST_MakePoint(75.954034, 14.408701), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shivamogga', 'karnataka', '568', '29', 75.220471, 14.043491, ST_SetSRID(ST_MakePoint(75.220471, 14.043491), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('udupi', 'karnataka', '569', '29', 74.872078, 13.498454, ST_SetSRID(ST_MakePoint(74.872078, 13.498454), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chikkamagaluru', 'karnataka', '570', '29', 75.690126, 13.454245, ST_SetSRID(ST_MakePoint(75.690126, 13.454245), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chikkaballapura', 'karnataka', '582', '29', 77.835494, 13.57744, ST_SetSRID(ST_MakePoint(77.835494, 13.57744), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hassan', 'karnataka', '574', '29', 76.108012, 12.996274, ST_SetSRID(ST_MakePoint(76.108012, 12.996274), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kolar', 'karnataka', '581', '29', 78.217839, 13.140211, ST_SetSRID(ST_MakePoint(78.217839, 13.140211), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bengaluru rural', 'karnataka', '583', '29', 77.573765, 13.227101, ST_SetSRID(ST_MakePoint(77.573765, 13.227101), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dakshina kannada', 'karnataka', '575', '29', 75.250498, 12.852211, ST_SetSRID(ST_MakePoint(75.250498, 12.852211), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bengaluru', 'karnataka', '572', '29', 77.593933, 12.952499, ST_SetSRID(ST_MakePoint(77.593933, 12.952499), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kasaragod', 'kerala', '588', '32', 75.152103, 12.462582, ST_SetSRID(ST_MakePoint(75.152103, 12.462582), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kodagu', 'karnataka', '576', '29', 75.800207, 12.32515, ST_SetSRID(ST_MakePoint(75.800207, 12.32515), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chamarajanagara', 'karnataka', '578', '29', 77.097586, 11.958835, ST_SetSRID(ST_MakePoint(77.097586, 11.958835), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('wayanad', 'kerala', '590', '32', 76.096434, 11.712762, ST_SetSRID(ST_MakePoint(76.096434, 11.712762), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kozhikode', 'kerala', '591', '32', 75.832285, 11.485965, ST_SetSRID(ST_MakePoint(75.832285, 11.485965), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('malappuram', 'kerala', '592', '32', 76.153473, 11.132289, ST_SetSRID(ST_MakePoint(76.153473, 11.132289), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('palakkad', 'kerala', '593', '32', 76.555716, 10.794728, ST_SetSRID(ST_MakePoint(76.555716, 10.794728), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thrissur', 'kerala', '594', '32', 76.315047, 10.471422, ST_SetSRID(ST_MakePoint(76.315047, 10.471422), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('idukki', 'kerala', '596', '32', 77.05633, 9.839275, ST_SetSRID(ST_MakePoint(77.05633, 9.839275), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ernakulam', 'kerala', '595', '32', 76.545033, 10.083022, ST_SetSRID(ST_MakePoint(76.545033, 10.083022), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('alappuzha', 'kerala', '598', '32', 76.448588, 9.426069, ST_SetSRID(ST_MakePoint(76.448588, 9.426069), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kottayam', 'kerala', '597', '32', 76.650749, 9.636886, ST_SetSRID(ST_MakePoint(76.650749, 9.636886), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pathanamthitta', 'kerala', '599', '32', 76.926527, 9.284217, ST_SetSRID(ST_MakePoint(76.926527, 9.284217), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kollam', 'kerala', '600', '32', 76.871376, 8.961938, ST_SetSRID(ST_MakePoint(76.871376, 8.961938), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thiruvananthapuram', 'kerala', '601', '32', 77.012796, 8.608864, ST_SetSRID(ST_MakePoint(77.012796, 8.608864), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west godavari', 'andhra pradesh', '546', '37', 81.383096, 16.93702, ST_SetSRID(ST_MakePoint(81.383096, 16.93702), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dakshin bastar dantewada', 'chhattisgarh', '416', '22', 81.377317, 18.863764, ST_SetSRID(ST_MakePoint(81.377317, 18.863764), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bastar', 'chhattisgarh', '414', '22', 81.868082, 19.081431, ST_SetSRID(ST_MakePoint(81.868082, 19.081431), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kondagaon', 'chhattisgarh', '722', '22', 81.665231, 19.745793, ST_SetSRID(ST_MakePoint(81.665231, 19.745793), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gariaband', 'chhattisgarh', '720', '22', 82.235142, 20.447552, ST_SetSRID(ST_MakePoint(82.235142, 20.447552), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('raipur', 'chhattisgarh', '410', '22', 81.820595, 21.285808, ST_SetSRID(ST_MakePoint(81.820595, 21.285808), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('durg', 'chhattisgarh', '409', '22', 81.382898, 21.220261, ST_SetSRID(ST_MakePoint(81.382898, 21.220261), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thane', 'maharashtra', '517', '27', 73.321965, 19.361282, ST_SetSRID(ST_MakePoint(73.321965, 19.361282), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('adilabad', 'telangana', '532', '36', 78.56583, 19.519771, ST_SetSRID(ST_MakePoint(78.56583, 19.519771), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hyderabad', 'telangana', '536', '36', 78.470597, 17.394381, ST_SetSRID(ST_MakePoint(78.470597, 17.394381), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jagitial', 'telangana', '737', '36', 78.875708, 18.832349, ST_SetSRID(ST_MakePoint(78.875708, 18.832349), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jangoan', 'telangana', '752', '36', 79.274442, 17.734269, ST_SetSRID(ST_MakePoint(79.274442, 17.734269), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mulugu', 'telangana', '780', '36', 80.336692, 18.288946, ST_SetSRID(ST_MakePoint(80.336692, 18.288946), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jogulamba gadwal', 'telangana', '744', '36', 77.781333, 16.072209, ST_SetSRID(ST_MakePoint(77.781333, 16.072209), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kamareddy', 'telangana', '736', '36', 78.062187, 18.324111, ST_SetSRID(ST_MakePoint(78.062187, 18.324111), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karimnagar', 'telangana', '534', '36', 79.235719, 18.378194, ST_SetSRID(ST_MakePoint(79.235719, 18.378194), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('khammam', 'telangana', '541', '36', 80.360528, 17.199607, ST_SetSRID(ST_MakePoint(80.360528, 17.199607), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kumuram bheem asifabad', 'telangana', '733', '36', 79.416723, 19.358974, ST_SetSRID(ST_MakePoint(79.416723, 19.358974), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahabubabad', 'telangana', '751', '36', 79.983484, 17.667944, ST_SetSRID(ST_MakePoint(79.983484, 17.667944), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahabubnagar', 'telangana', '538', '36', 77.989722, 16.757844, ST_SetSRID(ST_MakePoint(77.989722, 16.757844), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mancherial', 'telangana', '735', '36', 79.514234, 18.99567, ST_SetSRID(ST_MakePoint(79.514234, 18.99567), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('medak', 'telangana', '535', '36', 78.260124, 17.955141, ST_SetSRID(ST_MakePoint(78.260124, 17.955141), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('medchal malkajgiri', 'telangana', '742', '36', 78.558095, 17.543307, ST_SetSRID(ST_MakePoint(78.558095, 17.543307), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nagarkurnool', 'telangana', '746', '36', 78.587007, 16.38827, ST_SetSRID(ST_MakePoint(78.587007, 16.38827), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nalgonda', 'telangana', '539', '36', 79.192812, 16.875881, ST_SetSRID(ST_MakePoint(79.192812, 16.875881), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nirmal', 'telangana', '734', '36', 78.31502, 19.113165, ST_SetSRID(ST_MakePoint(78.31502, 19.113165), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nizamabad', 'telangana', '533', '36', 78.211392, 18.701414, ST_SetSRID(ST_MakePoint(78.211392, 18.701414), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('peddapalli', 'telangana', '738', '36', 79.451242, 18.621127, ST_SetSRID(ST_MakePoint(79.451242, 18.621127), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rajanna sircilla', 'telangana', '739', '36', 78.761344, 18.41624, ST_SetSRID(ST_MakePoint(78.761344, 18.41624), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ranga reddy', 'telangana', '537', '36', 78.412207, 17.131153, ST_SetSRID(ST_MakePoint(78.412207, 17.131153), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sangareddy', 'telangana', '740', '36', 77.87621, 17.783176, ST_SetSRID(ST_MakePoint(77.87621, 17.783176), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('siddipet', 'telangana', '741', '36', 78.848767, 18.010201, ST_SetSRID(ST_MakePoint(78.848767, 18.010201), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('suryapet', 'telangana', '748', '36', 79.754038, 17.081884, ST_SetSRID(ST_MakePoint(79.754038, 17.081884), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vikarabad', 'telangana', '743', '36', 77.745984, 17.253433, ST_SetSRID(ST_MakePoint(77.745984, 17.253433), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('wanaparthy', 'telangana', '745', '36', 78.037342, 16.294844, ST_SetSRID(ST_MakePoint(78.037342, 16.294844), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('warangal rural', 'telangana', '749', '36', 79.746742, 17.919909, ST_SetSRID(ST_MakePoint(79.746742, 17.919909), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('warangal urban', 'telangana', '540', '36', 79.479446, 18.024593, ST_SetSRID(ST_MakePoint(79.479446, 18.024593), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('yadadri bhuvanagiri', 'telangana', '747', '36', 78.980777, 17.451672, ST_SetSRID(ST_MakePoint(78.980777, 17.451672), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south 24 parganas', 'west bengal', '343', '19', 88.536603, 22.067529, ST_SetSRID(ST_MakePoint(88.536603, 22.067529), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('amreli', 'gujarat', '480', '24', 71.249407, 21.424974, ST_SetSRID(ST_MakePoint(71.249407, 21.424974), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('anugul', 'odisha', '384', '21', 84.905217, 20.986614, ST_SetSRID(ST_MakePoint(84.905217, 20.986614), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('the dangs', 'gujarat', '489', '24', 73.700692, 20.804008, ST_SetSRID(ST_MakePoint(73.700692, 20.804008), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhamtari', 'chhattisgarh', '412', '22', 81.808972, 20.555908, ST_SetSRID(ST_MakePoint(81.808972, 20.555908), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kendrapara', 'odisha', '379', '21', 86.612899, 20.55311, ST_SetSRID(ST_MakePoint(86.612899, 20.55311), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dadra and nagar haveli', 'dadra and nagar haveli', '496', '26', 73.070254, 20.194828, ST_SetSRID(ST_MakePoint(73.070254, 20.194828), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('palghar', 'maharashtra', '732', '27', 73.01923, 19.794, ST_SetSRID(ST_MakePoint(73.01923, 19.794), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ganjam', 'odisha', '388', '21', 84.672875, 19.625251, ST_SetSRID(ST_MakePoint(84.672875, 19.625251), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gajapati', 'odisha', '389', '21', 84.161061, 19.184973, ST_SetSRID(ST_MakePoint(84.161061, 19.184973), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('y.s.r.', 'andhra pradesh', '551', '37', 78.780695, 14.463962, ST_SetSRID(ST_MakePoint(78.780695, 14.463962), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tumakuru', 'karnataka', '571', '29', 76.94592, 13.519909, ST_SetSRID(ST_MakePoint(76.94592, 13.519909), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chittoor', 'andhra pradesh', '554', '37', 79.005636, 13.464687, ST_SetSRID(ST_MakePoint(79.005636, 13.464687), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ramanagara', 'karnataka', '584', '29', 77.335402, 12.680527, ST_SetSRID(ST_MakePoint(77.335402, 12.680527), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mandya', 'karnataka', '573', '29', 76.798035, 12.611224, ST_SetSRID(ST_MakePoint(76.798035, 12.611224), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mysuru', 'karnataka', '577', '29', 76.440832, 12.211079, ST_SetSRID(ST_MakePoint(76.440832, 12.211079), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kannur', 'kerala', '589', '32', 75.523876, 11.999733, ST_SetSRID(ST_MakePoint(75.523876, 11.999733), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('puducherry', 'puducherry', '635', '34', 79.736244, 11.910947, ST_SetSRID(ST_MakePoint(79.736244, 11.910947), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('balod', 'chhattisgarh', '719', '22', 81.188608, 20.741435, ST_SetSRID(ST_MakePoint(81.188608, 20.741435), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhadradri kothagudem', 'telangana', '753', '36', 80.709782, 17.688192, ST_SetSRID(ST_MakePoint(80.709782, 17.688192), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vadodara', 'gujarat', '486', '24', 73.242272, 22.248938, ST_SetSRID(ST_MakePoint(73.242272, 22.248938), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('medinipur west', 'west bengal', '344', '19', 87.417037, 22.43882, ST_SetSRID(ST_MakePoint(87.417037, 22.43882), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('seoni', 'madhya pradesh', '456', '23', 79.689236, 22.317068, ST_SetSRID(ST_MakePoint(79.689236, 22.317068), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('alirajpur', 'madhya pradesh', '465', '23', 74.364421, 22.314907, ST_SetSRID(ST_MakePoint(74.364421, 22.314907), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chhindwara', 'madhya pradesh', '455', '23', 78.85421, 22.122928, ST_SetSRID(ST_MakePoint(78.85421, 22.122928), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('harda', 'madhya pradesh', '448', '23', 77.123476, 22.232281, ST_SetSRID(ST_MakePoint(77.123476, 22.232281), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west nimar', 'madhya pradesh', '440', '23', 75.771618, 21.918911, ST_SetSRID(ST_MakePoint(75.771618, 21.918911), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('medinipur east', 'west bengal', '345', '19', 87.771999, 22.031448, ST_SetSRID(ST_MakePoint(87.771999, 22.031448), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mayurbhanj', 'odisha', '376', '21', 86.409308, 21.895862, ST_SetSRID(ST_MakePoint(86.409308, 21.895862), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bharuch', 'gujarat', '488', '24', 72.935087, 21.786139, ST_SetSRID(ST_MakePoint(72.935087, 21.786139), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sundargarh', 'odisha', '374', '21', 84.509024, 22.080697, ST_SetSRID(ST_MakePoint(84.509024, 22.080697), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kabeerdham', 'chhattisgarh', '407', '22', 81.222705, 22.091835, ST_SetSRID(ST_MakePoint(81.222705, 22.091835), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east nimar', 'madhya pradesh', '466', '23', 76.567652, 21.934648, ST_SetSRID(ST_MakePoint(76.567652, 21.934648), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('porbandar', 'gujarat', '478', '24', 69.77873, 21.654644, ST_SetSRID(ST_MakePoint(69.77873, 21.654644), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('balaghat', 'madhya pradesh', '457', '23', 80.358674, 21.880403, ST_SetSRID(ST_MakePoint(80.358674, 21.880403), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('narmada', 'gujarat', '487', '24', 73.644918, 21.73752, ST_SetSRID(ST_MakePoint(73.644918, 21.73752), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('barwani', 'madhya pradesh', '441', '23', 75.021427, 21.788509, ST_SetSRID(ST_MakePoint(75.021427, 21.788509), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('janjgir champa', 'chhattisgarh', '405', '22', 82.734558, 21.92859, ST_SetSRID(ST_MakePoint(82.734558, 21.92859), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nandurbar', 'maharashtra', '497', '27', 74.216411, 21.549818, ST_SetSRID(ST_MakePoint(74.216411, 21.549818), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kendujhar', 'odisha', '375', '21', 85.703881, 21.53726, ST_SetSRID(ST_MakePoint(85.703881, 21.53726), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baleshwar', 'odisha', '377', '21', 86.913413, 21.491492, ST_SetSRID(ST_MakePoint(86.913413, 21.491492), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jharsuguda', 'odisha', '371', '21', 83.947953, 21.806494, ST_SetSRID(ST_MakePoint(83.947953, 21.806494), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bametara', 'chhattisgarh', '718', '22', 81.525012, 21.708535, ST_SetSRID(ST_MakePoint(81.525012, 21.708535), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rajnandgaon', 'chhattisgarh', '408', '22', 80.820193, 21.039815, ST_SetSRID(ST_MakePoint(80.820193, 21.039815), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('amravati', 'maharashtra', '503', '27', 77.571242, 21.187316, ST_SetSRID(ST_MakePoint(77.571242, 21.187316), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('surat', 'gujarat', '492', '24', 73.075964, 21.266604, ST_SetSRID(ST_MakePoint(73.075964, 21.266604), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhule', 'maharashtra', '498', '27', 74.600036, 21.110535, ST_SetSRID(ST_MakePoint(74.600036, 21.110535), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tapi', 'gujarat', '493', '24', 73.626663, 21.191382, ST_SetSRID(ST_MakePoint(73.626663, 21.191382), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bargarh', 'odisha', '370', '21', 83.349095, 21.219254, ST_SetSRID(ST_MakePoint(83.349095, 21.219254), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nagpur', 'maharashtra', '505', '27', 79.085121, 21.178257, ST_SetSRID(ST_MakePoint(79.085121, 21.178257), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baloda bazar', 'chhattisgarh', '721', '22', 82.327585, 21.582522, ST_SetSRID(ST_MakePoint(82.327585, 21.582522), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mungeli', 'chhattisgarh', '717', '22', 81.730503, 22.241753, ST_SetSRID(ST_MakePoint(81.730503, 22.241753), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('botad', 'gujarat', '726', '24', 71.698346, 22.115997, ST_SetSRID(ST_MakePoint(71.698346, 22.115997), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chota udaipur', 'gujarat', '731', '24', 73.873204, 22.219671, ST_SetSRID(ST_MakePoint(73.873204, 22.219671), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gir somnath', 'gujarat', '729', '24', 70.776757, 20.964832, ST_SetSRID(ST_MakePoint(70.776757, 20.964832), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jhargram', 'west bengal', '776', '19', 86.956517, 22.36311, ST_SetSRID(ST_MakePoint(86.956517, 22.36311), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rajkot', 'gujarat', '476', '24', 70.745516, 22.021339, ST_SetSRID(ST_MakePoint(70.745516, 22.021339), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhavnagar', 'gujarat', '481', '24', 71.912145, 21.584519, ST_SetSRID(ST_MakePoint(71.912145, 21.584519), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('betul', 'madhya pradesh', '447', '23', 77.871091, 21.878698, ST_SetSRID(ST_MakePoint(77.871091, 21.878698), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('junagadh', 'gujarat', '479', '24', 70.412821, 21.371991, ST_SetSRID(ST_MakePoint(70.412821, 21.371991), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('debagarh', 'odisha', '373', '21', 84.786284, 21.467442, ST_SetSRID(ST_MakePoint(84.786284, 21.467442), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jamnagar', 'gujarat', '477', '24', 70.208285, 22.33264, ST_SetSRID(ST_MakePoint(70.208285, 22.33264), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('devbhumi dwarka', 'gujarat', '728', '24', 69.466031, 22.123621, ST_SetSRID(ST_MakePoint(69.466031, 22.123621), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('aurangabad', 'maharashtra', '515', '27', 75.280991, 20.028619, ST_SetSRID(ST_MakePoint(75.280991, 20.028619), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vijayapura', 'karnataka', '557', '29', 75.95267, 16.793876, ST_SetSRID(ST_MakePoint(75.95267, 16.793876), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bijapur', 'chhattisgarh', '417', '22', 80.775758, 18.841887, ST_SetSRID(ST_MakePoint(80.775758, 18.841887), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('raigarh', 'maharashtra', '520', '27', 73.217376, 18.52145, ST_SetSRID(ST_MakePoint(73.217376, 18.52145), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('raigarh', 'chhattisgarh', '403', '22', 83.303633, 22.084484, ST_SetSRID(ST_MakePoint(83.303633, 22.084484), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bilaspur', 'chhattisgarh', '406', '22', 82.072968, 22.40586, ST_SetSRID(ST_MakePoint(82.072968, 22.40586), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karaikal', 'puducherry', '637', '34', 79.803239, 10.933589, ST_SetSRID(ST_MakePoint(79.803239, 10.933589), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahe', 'puducherry', '636', '34', 75.539729, 11.730981, ST_SetSRID(ST_MakePoint(75.539729, 11.730981), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('yanam', 'puducherry', '634', '34', 82.254085, 16.722299, ST_SetSRID(ST_MakePoint(82.254085, 16.722299), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sambalpur', 'odisha', '372', '21', 84.274443, 21.4512, ST_SetSRID(ST_MakePoint(84.274443, 21.4512), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('navsari', 'gujarat', '490', '24', 73.092124, 20.815084, ST_SetSRID(ST_MakePoint(73.092124, 20.815084), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lakshadweep', 'lakshadweep', '587', '31', 73.016614, 10.251068, ST_SetSRID(ST_MakePoint(73.016614, 10.251068), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('daman', 'daman and diu', '495', '25', 72.857534, 20.414613, ST_SetSRID(ST_MakePoint(72.857534, 20.414613), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('diu', 'daman and diu', '494', '25', 70.938163, 20.719617, ST_SetSRID(ST_MakePoint(70.938163, 20.719617), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mumbai suburban', 'maharashtra', '518', '27', 72.884202, 19.132089, ST_SetSRID(ST_MakePoint(72.884202, 19.132089), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jayashankar', 'telangana', '750', '36', 79.925436, 18.502244, ST_SetSRID(ST_MakePoint(79.925436, 18.502244), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('narayanpet', 'telangana', '781', '36', 77.580862, 16.644305, ST_SetSRID(ST_MakePoint(77.580862, 16.644305), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sukma', 'chhattisgarh', '723', '22', 81.347791, 18.256424, ST_SetSRID(ST_MakePoint(81.347791, 18.256424), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('upper subansiri', 'arunachal pradesh', '249', '12', 93.932958, 28.291029, ST_SetSRID(ST_MakePoint(93.932958, 28.291029), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('anjaw', 'arunachal pradesh', '260', '12', 96.824349, 28.066094, ST_SetSRID(ST_MakePoint(96.824349, 28.066094), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tinsukia', 'assam', '309', '18', 95.61957, 27.579868, ST_SetSRID(ST_MakePoint(95.61957, 27.579868), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhemaji', 'assam', '308', '18', 94.77597, 27.590573, ST_SetSRID(ST_MakePoint(94.77597, 27.590573), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('changlang', 'arunachal pradesh', '253', '12', 96.340635, 27.363155, ST_SetSRID(ST_MakePoint(96.340635, 27.363155), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dibrugarh', 'assam', '310', '18', 95.05317, 27.366451, ST_SetSRID(ST_MakePoint(95.05317, 27.366451), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tawang', 'arunachal pradesh', '245', '12', 91.950047, 27.661831, ST_SetSRID(ST_MakePoint(91.950047, 27.661831), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('papum pare', 'arunachal pradesh', '248', '12', 93.593833, 27.289749, ST_SetSRID(ST_MakePoint(93.593833, 27.289749), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lakhimpur', 'assam', '307', '18', 94.140843, 27.174731, ST_SetSRID(ST_MakePoint(94.140843, 27.174731), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tirap', 'arunachal pradesh', '254', '12', 95.531413, 27.027622, ST_SetSRID(ST_MakePoint(95.531413, 27.027622), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sivasagar', 'assam', '311', '18', 94.660289, 26.970159, ST_SetSRID(ST_MakePoint(94.660289, 26.970159), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jorhat', 'assam', '312', '18', 94.264591, 26.711414, ST_SetSRID(ST_MakePoint(94.264591, 26.711414), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mon', 'nagaland', '261', '13', 95.017776, 26.684509, ST_SetSRID(ST_MakePoint(95.017776, 26.684509), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sonitpur', 'assam', '306', '18', 92.698841, 26.756047, ST_SetSRID(ST_MakePoint(92.698841, 26.756047), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('golaghat', 'assam', '313', '18', 93.834583, 26.476186, ST_SetSRID(ST_MakePoint(93.834583, 26.476186), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('longleng', 'nagaland', '268', '13', 94.797437, 26.559092, ST_SetSRID(ST_MakePoint(94.797437, 26.559092), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mokokchung', 'nagaland', '262', '13', 94.528582, 26.471809, ST_SetSRID(ST_MakePoint(94.528582, 26.471809), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('udalguri', 'assam', '326', '18', 92.031569, 26.730319, ST_SetSRID(ST_MakePoint(92.031569, 26.730319), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chirang', 'assam', '320', '18', 90.599622, 26.66013, ST_SetSRID(ST_MakePoint(90.599622, 26.66013), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baksa', 'assam', '324', '18', 91.353866, 26.661048, ST_SetSRID(ST_MakePoint(91.353866, 26.661048), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nagaon', 'assam', '305', '18', 92.754734, 26.36276, ST_SetSRID(ST_MakePoint(92.754734, 26.36276), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kokrajhar', 'assam', '300', '18', 90.117067, 26.493421, ST_SetSRID(ST_MakePoint(90.117067, 26.493421), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('darrang', 'assam', '325', '18', 92.029538, 26.447334, ST_SetSRID(ST_MakePoint(92.029538, 26.447334), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tuensang', 'nagaland', '267', '13', 94.888583, 26.176567, ST_SetSRID(ST_MakePoint(94.888583, 26.176567), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('barpeta', 'assam', '303', '18', 91.00385, 26.339822, ST_SetSRID(ST_MakePoint(91.00385, 26.339822), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nalbari', 'assam', '323', '18', 91.383061, 26.370968, ST_SetSRID(ST_MakePoint(91.383061, 26.370968), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('morigaon', 'assam', '304', '18', 92.284461, 26.281684, ST_SetSRID(ST_MakePoint(92.284461, 26.281684), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kamrup', 'assam', '321', '18', 91.415547, 26.0997, ST_SetSRID(ST_MakePoint(91.415547, 26.0997), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bongaigaon', 'assam', '319', '18', 90.618179, 26.359043, ST_SetSRID(ST_MakePoint(90.618179, 26.359043), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhubri', 'assam', '301', '18', 90.032166, 26.166782, ST_SetSRID(ST_MakePoint(90.032166, 26.166782), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kamrup metropolitan', 'assam', '322', '18', 91.890089, 26.130374, ST_SetSRID(ST_MakePoint(91.890089, 26.130374), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kiphire', 'nagaland', '269', '13', 94.822549, 25.846518, ST_SetSRID(ST_MakePoint(94.822549, 25.846518), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('goalpara', 'assam', '302', '18', 90.604733, 26.051048, ST_SetSRID(ST_MakePoint(90.604733, 26.051048), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ribhoi', 'meghalaya', '297', '17', 91.884949, 25.870613, ST_SetSRID(ST_MakePoint(91.884949, 25.870613), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dima hasao', 'assam', '315', '18', 93.030845, 25.378273, ST_SetSRID(ST_MakePoint(93.030845, 25.378273), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kamjong', 'manipur', '770', '14', 94.432435, 24.822463, ST_SetSRID(ST_MakePoint(94.432435, 24.822463), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west khasi hills', 'meghalaya', '296', '17', 91.262144, 25.605199, ST_SetSRID(ST_MakePoint(91.262144, 25.605199), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('peren', 'nagaland', '271', '13', 93.615571, 25.492651, ST_SetSRID(ST_MakePoint(93.615571, 25.492651), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('senapati', 'manipur', '272', '14', 94.127248, 25.398224, ST_SetSRID(ST_MakePoint(94.127248, 25.398224), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east jaintia hills', 'meghalaya', '714', '17', 92.469199, 25.258431, ST_SetSRID(ST_MakePoint(92.469199, 25.258431), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east khasi hills', 'meghalaya', '298', '17', 91.797951, 25.381434, ST_SetSRID(ST_MakePoint(91.797951, 25.381434), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tamenglong', 'manipur', '273', '14', 93.556945, 25.048454, ST_SetSRID(ST_MakePoint(93.556945, 25.048454), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south garo hills', 'meghalaya', '295', '17', 90.58187, 25.301221, ST_SetSRID(ST_MakePoint(90.58187, 25.301221), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('cachar', 'assam', '316', '18', 92.854728, 24.811339, ST_SetSRID(ST_MakePoint(92.854728, 24.811339), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('imphal west', 'manipur', '277', '14', 93.868467, 24.770757, ST_SetSRID(ST_MakePoint(93.868467, 24.770757), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karimganj', 'assam', '317', '18', 92.376755, 24.574844, ST_SetSRID(ST_MakePoint(92.376755, 24.574844), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hailakandi', 'assam', '318', '18', 92.587273, 24.496284, ST_SetSRID(ST_MakePoint(92.587273, 24.496284), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kakching', 'manipur', '768', '14', 93.917224, 24.442615, ST_SetSRID(ST_MakePoint(93.917224, 24.442615), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bishnupur', 'manipur', '275', '14', 93.797684, 24.538125, ST_SetSRID(ST_MakePoint(93.797684, 24.538125), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chandel', 'manipur', '280', '14', 94.014887, 24.139679, ST_SetSRID(ST_MakePoint(94.014887, 24.139679), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('churachandpur', 'manipur', '274', '14', 93.602818, 24.279864, ST_SetSRID(ST_MakePoint(93.602818, 24.279864), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north tripura', 'tripura', '292', '16', 92.206925, 24.099207, ST_SetSRID(ST_MakePoint(92.206925, 24.099207), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhalai', 'tripura', '291', '16', 91.920623, 23.840228, ST_SetSRID(ST_MakePoint(91.920623, 23.840228), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sipahijala', 'tripura', '707', '16', 91.329536, 23.586262, ST_SetSRID(ST_MakePoint(91.329536, 23.586262), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gomati', 'tripura', '709', '16', 91.619648, 23.53062, ST_SetSRID(ST_MakePoint(91.619648, 23.53062), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('wokha', 'nagaland', '264', '13', 94.197308, 26.195064, ST_SetSRID(ST_MakePoint(94.197308, 26.195064), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('zunheboto', 'nagaland', '263', '13', 94.486005, 26.003938, ST_SetSRID(ST_MakePoint(94.486005, 26.003938), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('phek', 'nagaland', '266', '13', 94.531064, 25.648757, ST_SetSRID(ST_MakePoint(94.531064, 25.648757), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west garo hills', 'meghalaya', '293', '17', 90.196124, 25.653407, ST_SetSRID(ST_MakePoint(90.196124, 25.653407), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east garo hills', 'meghalaya', '294', '17', 90.632057, 25.624114, ST_SetSRID(ST_MakePoint(90.632057, 25.624114), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kohima', 'nagaland', '270', '13', 94.109457, 25.769103, ST_SetSRID(ST_MakePoint(94.109457, 25.769103), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dimapur', 'nagaland', '265', '13', 93.794542, 25.775996, ST_SetSRID(ST_MakePoint(93.794542, 25.775996), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east siang', 'arunachal pradesh', '251', '12', 95.354957, 28.043255, ST_SetSRID(ST_MakePoint(95.354957, 28.043255), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lohit', 'arunachal pradesh', '259', '12', 96.274597, 27.904725, ST_SetSRID(ST_MakePoint(96.274597, 27.904725), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kurung kumey', 'arunachal pradesh', '256', '12', 93.201273, 28.013755, ST_SetSRID(ST_MakePoint(93.201273, 28.013755), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lower subansiri', 'arunachal pradesh', '255', '12', 93.788224, 27.561731, ST_SetSRID(ST_MakePoint(93.788224, 27.561731), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east kameng', 'arunachal pradesh', '247', '12', 92.92262, 27.585406, ST_SetSRID(ST_MakePoint(92.92262, 27.585406), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west kameng', 'arunachal pradesh', '246', '12', 92.390554, 27.297478, ST_SetSRID(ST_MakePoint(92.390554, 27.297478), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west jaintia hills', 'meghalaya', '299', '17', 92.286014, 25.483202, ST_SetSRID(ST_MakePoint(92.286014, 25.483202), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south west khasi hills', 'meghalaya', '713', '17', 91.243485, 25.320523, ST_SetSRID(ST_MakePoint(91.243485, 25.320523), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north garo hills', 'meghalaya', '712', '17', 90.663897, 25.855487, ST_SetSRID(ST_MakePoint(90.663897, 25.855487), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south west garo hills', 'meghalaya', '711', '17', 89.993042, 25.445123, ST_SetSRID(ST_MakePoint(89.993042, 25.445123), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('khowai', 'tripura', '708', '16', 91.654258, 23.946818, ST_SetSRID(ST_MakePoint(91.654258, 23.946818), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west tripura', 'tripura', '289', '16', 91.396202, 23.888563, ST_SetSRID(ST_MakePoint(91.396202, 23.888563), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south tripura', 'tripura', '290', '16', 91.587033, 23.192525, ST_SetSRID(ST_MakePoint(91.587033, 23.192525), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('unokoti', 'tripura', '710', '16', 92.039182, 24.19324, ST_SetSRID(ST_MakePoint(92.039182, 24.19324), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('charaideo', 'assam', '755', '18', 95.04512, 27.062517, ST_SetSRID(ST_MakePoint(95.04512, 27.062517), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('majuli', 'assam', '760', '18', 94.292377, 26.99891, ST_SetSRID(ST_MakePoint(94.292377, 26.99891), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('biswanath', 'assam', '756', '18', 93.38452, 26.828782, ST_SetSRID(ST_MakePoint(93.38452, 26.828782), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hojai', 'assam', '757', '18', 92.979842, 25.978471, ST_SetSRID(ST_MakePoint(92.979842, 25.978471), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south salmara mancachar', 'assam', '758', '18', 89.962358, 25.817852, ST_SetSRID(ST_MakePoint(89.962358, 25.817852), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karbi anglong', 'assam', '314', '18', 93.404836, 26.156339, ST_SetSRID(ST_MakePoint(93.404836, 26.156339), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west karbi anglong', 'assam', '759', '18', 92.532088, 25.850379, ST_SetSRID(ST_MakePoint(92.532088, 25.850379), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kra daadi', 'arunachal pradesh', '763', '12', 93.694369, 28.001021, ST_SetSRID(ST_MakePoint(93.694369, 28.001021), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('namsai', 'arunachal pradesh', '762', '12', 96.043766, 27.700605, ST_SetSRID(ST_MakePoint(96.043766, 27.700605), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('longding', 'arunachal pradesh', '761', '12', 95.328121, 26.85485, ST_SetSRID(ST_MakePoint(95.328121, 26.85485), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('imphal east', 'manipur', '278', '14', 94.009236, 24.824838, ST_SetSRID(ST_MakePoint(94.009236, 24.824838), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jiribam', 'manipur', '766', '14', 93.151699, 24.672936, ST_SetSRID(ST_MakePoint(93.151699, 24.672936), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kangpokpi', 'manipur', '767', '14', 93.974624, 25.018865, ST_SetSRID(ST_MakePoint(93.974624, 25.018865), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('thoubal', 'manipur', '276', '14', 94.010802, 24.61966, ST_SetSRID(ST_MakePoint(94.010802, 24.61966), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tengnoupal', 'manipur', '769', '14', 94.224341, 24.427098, ST_SetSRID(ST_MakePoint(94.224341, 24.427098), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ukhrul', 'manipur', '279', '14', 94.427053, 25.23149, ST_SetSRID(ST_MakePoint(94.427053, 25.23149), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('noney', 'manipur', '771', '14', 93.480763, 24.678724, ST_SetSRID(ST_MakePoint(93.480763, 24.678724), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pherzawl', 'manipur', '772', '14', 93.222974, 24.303427, ST_SetSRID(ST_MakePoint(93.222974, 24.303427), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('upper siang', 'arunachal pradesh', '252', '12', 94.915018, 28.83404, ST_SetSRID(ST_MakePoint(94.915018, 28.83404), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lower siang', 'arunachal pradesh', '779', '12', 94.685254, 27.769923, ST_SetSRID(ST_MakePoint(94.685254, 27.769923), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('upper dibang valley', 'arunachal pradesh', '257', '12', 95.909383, 28.861459, ST_SetSRID(ST_MakePoint(95.909383, 28.861459), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lower dibang valley', 'arunachal pradesh', '258', '12', 95.840794, 28.249311, ST_SetSRID(ST_MakePoint(95.840794, 28.249311), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('siang', 'arunachal pradesh', '764', '12', 94.811535, 28.403825, ST_SetSRID(ST_MakePoint(94.811535, 28.403825), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shi yomi', 'arunachal pradesh', '785', '12', 94.259115, 28.678977, ST_SetSRID(ST_MakePoint(94.259115, 28.678977), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pakke kessang', 'arunachal pradesh', '783', '12', 93.03712, 27.105263, ST_SetSRID(ST_MakePoint(93.03712, 27.105263), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west siang', 'arunachal pradesh', '250', '12', 94.624724, 28.159068, ST_SetSRID(ST_MakePoint(94.624724, 28.159068), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lepa rada', 'arunachal pradesh', '784', '12', 94.732319, 27.926517, ST_SetSRID(ST_MakePoint(94.732319, 27.926517), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kamle', 'arunachal pradesh', '778', '12', 94.090879, 27.730361, ST_SetSRID(ST_MakePoint(94.090879, 27.730361), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north and middle andaman', 'andaman and nicobar', '639', '35', 92.863287, 12.834407, ST_SetSRID(ST_MakePoint(92.863287, 12.834407), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south andaman', 'andaman and nicobar', '640', '35', 92.642974, 11.504712, ST_SetSRID(ST_MakePoint(92.642974, 11.504712), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nicobars', 'andaman and nicobar', '638', '35', 93.599015, 7.50551, ST_SetSRID(ST_MakePoint(93.599015, 7.50551), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('amroha', 'uttar pradesh', '137', '09', 78.33214, 28.812419, ST_SetSRID(ST_MakePoint(78.33214, 28.812419), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('churu', 'rajasthan', '102', '08', 74.69657, 28.344569, ST_SetSRID(ST_MakePoint(74.69657, 28.344569), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hapur', 'uttar pradesh', '705', '09', 77.892712, 28.721446, ST_SetSRID(ST_MakePoint(77.892712, 28.721446), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north delhi', 'delhi', '091', '07', 77.108637, 28.792944, ST_SetSRID(ST_MakePoint(77.108637, 28.792944), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jhajjar', 'haryana', '083', '06', 76.652336, 28.605, ST_SetSRID(ST_MakePoint(76.652336, 28.605), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bareilly', 'uttar pradesh', '150', '09', 79.431448, 28.458024, ST_SetSRID(ST_MakePoint(79.431448, 28.458024), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pilibhit', 'uttar pradesh', '151', '09', 79.994915, 28.530607, ST_SetSRID(ST_MakePoint(79.994915, 28.530607), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north east delhi', 'delhi', '092', '07', 77.257511, 28.718213, ST_SetSRID(ST_MakePoint(77.257511, 28.718213), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west delhi', 'delhi', '096', '07', 77.065856, 28.655034, ST_SetSRID(ST_MakePoint(77.065856, 28.655034), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bulandshahr', 'uttar pradesh', '142', '09', 78.015142, 28.362178, ST_SetSRID(ST_MakePoint(78.015142, 28.362178), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east delhi', 'delhi', '093', '07', 77.295213, 28.61856, ST_SetSRID(ST_MakePoint(77.295213, 28.61856), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south west delhi', 'delhi', '097', '07', 76.967071, 28.576057, ST_SetSRID(ST_MakePoint(76.967071, 28.576057), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('central delhi', 'delhi', '095', '07', 77.215738, 28.695779, ST_SetSRID(ST_MakePoint(77.215738, 28.695779), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gautam buddha nagar', 'uttar pradesh', '141', '09', 77.556434, 28.394058, ST_SetSRID(ST_MakePoint(77.556434, 28.394058), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('new delhi', 'delhi', '094', '07', 77.147678, 28.578628, ST_SetSRID(ST_MakePoint(77.147678, 28.578628), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kheri', 'uttar pradesh', '153', '09', 80.6669, 28.120699, ST_SetSRID(ST_MakePoint(80.6669, 28.120699), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south delhi', 'delhi', '098', '07', 77.190493, 28.483864, ST_SetSRID(ST_MakePoint(77.190493, 28.483864), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jhunjhunu', 'rajasthan', '103', '08', 75.55, 28.092146, ST_SetSRID(ST_MakePoint(75.55, 28.092146), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gurugram', 'haryana', '086', '06', 76.94114, 28.368815, ST_SetSRID(ST_MakePoint(76.94114, 28.368815), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('faridabad', 'haryana', '088', '06', 77.347258, 28.3489, ST_SetSRID(ST_MakePoint(77.347258, 28.3489), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahendragarh', 'haryana', '084', '06', 76.138249, 28.170955, ST_SetSRID(ST_MakePoint(76.138249, 28.170955), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rewari', 'haryana', '085', '06', 76.537314, 28.243127, ST_SetSRID(ST_MakePoint(76.537314, 28.243127), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('budaun', 'uttar pradesh', '149', '09', 79.040974, 28.077989, ST_SetSRID(ST_MakePoint(79.040974, 28.077989), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jaisalmer', 'rajasthan', '114', '08', 70.900066, 27.075042, ST_SetSRID(ST_MakePoint(70.900066, 27.075042), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bahraich', 'uttar pradesh', '180', '09', 81.492532, 27.698127, ST_SetSRID(ST_MakePoint(81.492532, 27.698127), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nuh', 'haryana', '087', '06', 77.049013, 27.985307, ST_SetSRID(ST_MakePoint(77.049013, 27.985307), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shahjahanpur', 'uttar pradesh', '152', '09', 79.82124, 27.950546, ST_SetSRID(ST_MakePoint(79.82124, 27.950546), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sikar', 'rajasthan', '111', '08', 75.288431, 27.633683, ST_SetSRID(ST_MakePoint(75.288431, 27.633683), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('palwal', 'haryana', '089', '06', 77.33118, 28.059618, ST_SetSRID(ST_MakePoint(77.33118, 28.059618), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('alwar', 'rajasthan', '104', '08', 76.601327, 27.590898, ST_SetSRID(ST_MakePoint(76.601327, 27.590898), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north  district', 'sikkim', '241', '11', 88.527743, 27.743503, ST_SetSRID(ST_MakePoint(88.527743, 27.743503), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('aligarh', 'uttar pradesh', '143', '09', 78.065697, 27.926324, ST_SetSRID(ST_MakePoint(78.065697, 27.926324), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kasganj', 'uttar pradesh', '202', '09', 78.845874, 27.773364, ST_SetSRID(ST_MakePoint(78.845874, 27.773364), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mathura', 'uttar pradesh', '145', '09', 77.626142, 27.597803, ST_SetSRID(ST_MakePoint(77.626142, 27.597803), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jaipur', 'rajasthan', '110', '08', 75.718694, 26.976851, ST_SetSRID(ST_MakePoint(75.718694, 26.976851), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shrawasti', 'uttar pradesh', '181', '09', 81.903875, 27.717954, ST_SetSRID(ST_MakePoint(81.903875, 27.717954), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jodhpur', 'rajasthan', '113', '08', 72.785545, 26.747361, ST_SetSRID(ST_MakePoint(72.785545, 26.747361), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sitapur', 'uttar pradesh', '154', '09', 80.85222, 27.516819, ST_SetSRID(ST_MakePoint(80.85222, 27.516819), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bharatpur', 'rajasthan', '105', '08', 77.275773, 27.248163, ST_SetSRID(ST_MakePoint(77.275773, 27.248163), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hathras', 'uttar pradesh', '144', '09', 78.164689, 27.581254, ST_SetSRID(ST_MakePoint(78.164689, 27.581254), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nagaur', 'rajasthan', '112', '08', 74.175014, 27.065937, ST_SetSRID(ST_MakePoint(74.175014, 27.065937), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('etah', 'uttar pradesh', '201', '09', 78.718288, 27.515903, ST_SetSRID(ST_MakePoint(78.718288, 27.515903), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hardoi', 'uttar pradesh', '155', '09', 80.161315, 27.330088, ST_SetSRID(ST_MakePoint(80.161315, 27.330088), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('farrukhabad', 'uttar pradesh', '159', '09', 79.459018, 27.431573, ST_SetSRID(ST_MakePoint(79.459018, 27.431573), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west district', 'sikkim', '242', '11', 88.174815, 27.348272, ST_SetSRID(ST_MakePoint(88.174815, 27.348272), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south district', 'sikkim', '243', '11', 88.383747, 27.284351, ST_SetSRID(ST_MakePoint(88.383747, 27.284351), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east district', 'sikkim', '244', '11', 88.670806, 27.291491, ST_SetSRID(ST_MakePoint(88.670806, 27.291491), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('firozabad', 'uttar pradesh', '147', '09', 78.527417, 27.186801, ST_SetSRID(ST_MakePoint(78.527417, 27.186801), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('west champaran', 'bihar', '203', '10', 84.337875, 27.080958, ST_SetSRID(ST_MakePoint(84.337875, 27.080958), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('siddharthnagar', 'uttar pradesh', '184', '09', 82.873484, 27.270051, ST_SetSRID(ST_MakePoint(82.873484, 27.270051), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mainpuri', 'uttar pradesh', '148', '09', 79.051859, 27.182309, ST_SetSRID(ST_MakePoint(79.051859, 27.182309), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahrajganj', 'uttar pradesh', '187', '09', 83.530328, 27.20071, ST_SetSRID(ST_MakePoint(83.530328, 27.20071), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('agra', 'uttar pradesh', '146', '09', 78.075959, 27.036618, ST_SetSRID(ST_MakePoint(78.075959, 27.036618), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gonda', 'uttar pradesh', '183', '09', 82.024892, 27.083218, ST_SetSRID(ST_MakePoint(82.024892, 27.083218), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bara banki', 'uttar pradesh', '176', '09', 81.33244, 26.937839, ST_SetSRID(ST_MakePoint(81.33244, 26.937839), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('darjeeling', 'west bengal', '327', '19', 88.26348, 26.852607, ST_SetSRID(ST_MakePoint(88.26348, 26.852607), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dausa', 'rajasthan', '109', '08', 76.50915, 26.856829, ST_SetSRID(ST_MakePoint(76.50915, 26.856829), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kushinagar', 'uttar pradesh', '189', '09', 83.93383, 26.861432, ST_SetSRID(ST_MakePoint(83.93383, 26.861432), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kannauj', 'uttar pradesh', '160', '09', 79.68727, 27.013755, ST_SetSRID(ST_MakePoint(79.68727, 27.013755), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lucknow', 'uttar pradesh', '157', '09', 80.90523, 26.841994, ST_SetSRID(ST_MakePoint(80.90523, 26.841994), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jalpaiguri', 'west bengal', '328', '19', 88.760615, 26.681143, ST_SetSRID(ST_MakePoint(88.760615, 26.681143), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('basti', 'uttar pradesh', '185', '09', 82.62625, 26.820657, ST_SetSRID(ST_MakePoint(82.62625, 26.820657), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gorakhpur', 'uttar pradesh', '188', '09', 83.358825, 26.655395, ST_SetSRID(ST_MakePoint(83.358825, 26.655395), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sant kabir nagar', 'uttar pradesh', '186', '09', 83.027066, 26.77672, ST_SetSRID(ST_MakePoint(83.027066, 26.77672), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karauli', 'rajasthan', '107', '08', 76.959303, 26.522251, ST_SetSRID(ST_MakePoint(76.959303, 26.522251), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('east champaran', 'bihar', '204', '10', 84.921696, 26.617847, ST_SetSRID(ST_MakePoint(84.921696, 26.617847), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('unnao', 'uttar pradesh', '156', '09', 80.560594, 26.609488, ST_SetSRID(ST_MakePoint(80.560594, 26.609488), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('etawah', 'uttar pradesh', '161', '09', 79.094886, 26.764233, ST_SetSRID(ST_MakePoint(79.094886, 26.764233), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhaulpur', 'rajasthan', '106', '08', 77.701057, 26.680959, ST_SetSRID(ST_MakePoint(77.701057, 26.680959), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kanpur nagar', 'uttar pradesh', '164', '09', 80.208857, 26.391629, ST_SetSRID(ST_MakePoint(80.208857, 26.391629), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('auraiya', 'uttar pradesh', '162', '09', 79.478625, 26.658651, ST_SetSRID(ST_MakePoint(79.478625, 26.658651), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('morena', 'madhya pradesh', '419', '23', 77.868333, 26.4131, ST_SetSRID(ST_MakePoint(77.868333, 26.4131), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('barmer', 'rajasthan', '115', '08', 71.474662, 25.734705, ST_SetSRID(ST_MakePoint(71.474662, 25.734705), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('faizabad', 'uttar pradesh', '177', '09', 81.998012, 26.657372, ST_SetSRID(ST_MakePoint(81.998012, 26.657372), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kanpur dehat', 'uttar pradesh', '163', '09', 79.853063, 26.440471, ST_SetSRID(ST_MakePoint(79.853063, 26.440471), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhind', 'madhya pradesh', '420', '23', 78.721301, 26.422345, ST_SetSRID(ST_MakePoint(78.721301, 26.422345), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sawai madhopur', 'rajasthan', '108', '08', 76.46149, 26.218038, ST_SetSRID(ST_MakePoint(76.46149, 26.218038), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('deoria', 'uttar pradesh', '190', '09', 83.834855, 26.425545, ST_SetSRID(ST_MakePoint(83.834855, 26.425545), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sitamarhi', 'bihar', '206', '10', 85.552236, 26.584749, ST_SetSRID(ST_MakePoint(85.552236, 26.584749), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tonk', 'rajasthan', '120', '08', 75.66624, 26.14872, ST_SetSRID(ST_MakePoint(75.66624, 26.14872), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sheohar', 'bihar', '205', '10', 85.301479, 26.49776, ST_SetSRID(ST_MakePoint(85.301479, 26.49776), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sultanpur', 'uttar pradesh', '179', '09', 82.225707, 26.243, ST_SetSRID(ST_MakePoint(82.225707, 26.243), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pali', 'rajasthan', '118', '08', 73.519256, 25.707232, ST_SetSRID(ST_MakePoint(73.519256, 25.707232), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gopalganj', 'bihar', '217', '10', 84.373854, 26.444392, ST_SetSRID(ST_MakePoint(84.373854, 26.444392), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ambedkar nagar', 'uttar pradesh', '178', '09', 82.666411, 26.419352, ST_SetSRID(ST_MakePoint(82.666411, 26.419352), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rae bareli', 'uttar pradesh', '158', '09', 81.134556, 26.226046, ST_SetSRID(ST_MakePoint(81.134556, 26.226046), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jalaun', 'uttar pradesh', '165', '09', 79.386573, 26.091102, ST_SetSRID(ST_MakePoint(79.386573, 26.091102), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('azamgarh', 'uttar pradesh', '191', '09', 83.067226, 26.045563, ST_SetSRID(ST_MakePoint(83.067226, 26.045563), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gwalior', 'madhya pradesh', '421', '23', 78.146055, 26.039737, ST_SetSRID(ST_MakePoint(78.146055, 26.039737), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sheopur', 'madhya pradesh', '418', '23', 77.007255, 25.754597, ST_SetSRID(ST_MakePoint(77.007255, 25.754597), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mau', 'uttar pradesh', '192', '09', 83.562014, 26.047597, ST_SetSRID(ST_MakePoint(83.562014, 26.047597), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('fatehpur', 'uttar pradesh', '172', '09', 80.808367, 25.874696, ST_SetSRID(ST_MakePoint(80.808367, 25.874696), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ballia', 'uttar pradesh', '193', '09', 84.102196, 25.877175, ST_SetSRID(ST_MakePoint(84.102196, 25.877175), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jaunpur', 'uttar pradesh', '194', '09', 82.575232, 25.745551, ST_SetSRID(ST_MakePoint(82.575232, 25.745551), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhilwara', 'rajasthan', '122', '08', 74.726985, 25.480527, ST_SetSRID(ST_MakePoint(74.726985, 25.480527), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('samastipur', 'bihar', '221', '10', 85.865828, 25.773913, ST_SetSRID(ST_MakePoint(85.865828, 25.773913), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jalor', 'rajasthan', '116', '08', 72.211395, 25.098889, ST_SetSRID(ST_MakePoint(72.211395, 25.098889), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bundi', 'rajasthan', '121', '08', 75.791684, 25.487939, ST_SetSRID(ST_MakePoint(75.791684, 25.487939), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('katihar', 'bihar', '212', '10', 87.640474, 25.550055, ST_SetSRID(ST_MakePoint(87.640474, 25.550055), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jhansi', 'uttar pradesh', '166', '09', 78.950327, 25.508294, ST_SetSRID(ST_MakePoint(78.950327, 25.508294), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shivpuri', 'madhya pradesh', '423', '23', 77.805463, 25.365141, ST_SetSRID(ST_MakePoint(77.805463, 25.365141), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kota', 'rajasthan', '127', '08', 76.103951, 25.109879, ST_SetSRID(ST_MakePoint(76.103951, 25.109879), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('banda', 'uttar pradesh', '170', '09', 80.557285, 25.470587, ST_SetSRID(ST_MakePoint(80.557285, 25.470587), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ghazipur', 'uttar pradesh', '195', '09', 83.555349, 25.623803, ST_SetSRID(ST_MakePoint(83.555349, 25.623803), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kaushambi', 'uttar pradesh', '174', '09', 81.414816, 25.498237, ST_SetSRID(ST_MakePoint(81.414816, 25.498237), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('khagaria', 'bihar', '223', '10', 86.601395, 25.510242, ST_SetSRID(ST_MakePoint(86.601395, 25.510242), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhojpur', 'bihar', '231', '10', 84.540156, 25.474533, ST_SetSRID(ST_MakePoint(84.540156, 25.474533), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('prayagraj', 'uttar pradesh', '175', '09', 81.960442, 25.304176, ST_SetSRID(ST_MakePoint(81.960442, 25.304176), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('buxar', 'bihar', '232', '10', 84.093535, 25.487462, ST_SetSRID(ST_MakePoint(84.093535, 25.487462), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dakshin dinajpur', 'west bengal', '331', '19', 88.575009, 25.366793, ST_SetSRID(ST_MakePoint(88.575009, 25.366793), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('maldah', 'west bengal', '332', '19', 88.087997, 25.142725, ST_SetSRID(ST_MakePoint(88.087997, 25.142725), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tikamgarh', 'madhya pradesh', '424', '23', 79.015005, 24.882713, ST_SetSRID(ST_MakePoint(79.015005, 24.882713), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('varanasi', 'uttar pradesh', '197', '09', 82.913663, 25.388331, ST_SetSRID(ST_MakePoint(82.913663, 25.388331), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('darbhanga', 'bihar', '215', '10', 86.055547, 26.084375, ST_SetSRID(ST_MakePoint(86.055547, 26.084375), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('saharsa', 'bihar', '214', '10', 86.590432, 25.813855, ST_SetSRID(ST_MakePoint(86.590432, 25.813855), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sirohi', 'rajasthan', '117', '08', 72.776702, 24.762037, ST_SetSRID(ST_MakePoint(72.776702, 24.762037), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chitrakoot', 'uttar pradesh', '171', '09', 81.076894, 25.206036, ST_SetSRID(ST_MakePoint(81.076894, 25.206036), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chandauli', 'uttar pradesh', '196', '09', 83.258387, 25.141869, ST_SetSRID(ST_MakePoint(83.258387, 25.141869), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhadohi', 'uttar pradesh', '198', '09', 82.464186, 25.347567, ST_SetSRID(ST_MakePoint(82.464186, 25.347567), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baran', 'rajasthan', '128', '08', 76.747774, 24.995232, ST_SetSRID(ST_MakePoint(76.747774, 24.995232), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sahibganj', 'jharkhand', '352', '20', 87.676842, 25.009519, ST_SetSRID(ST_MakePoint(87.676842, 25.009519), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kaimur bhabhua', 'bihar', '233', '10', 83.605541, 24.99204, ST_SetSRID(ST_MakePoint(83.605541, 24.99204), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rohtas', 'bihar', '234', '10', 84.026257, 24.979697, ST_SetSRID(ST_MakePoint(84.026257, 24.979697), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('udaipur', 'rajasthan', '130', '08', 73.68949, 24.418482, ST_SetSRID(ST_MakePoint(73.68949, 24.418482), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('godda', 'jharkhand', '351', '20', 87.308909, 24.859384, ST_SetSRID(ST_MakePoint(87.308909, 24.859384), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mirzapur', 'uttar pradesh', '199', '09', 82.608227, 24.986654, ST_SetSRID(ST_MakePoint(82.608227, 24.986654), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lalitpur', 'uttar pradesh', '167', '09', 78.56164, 24.654134, ST_SetSRID(ST_MakePoint(78.56164, 24.654134), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jamui', 'bihar', '238', '10', 86.292467, 24.784643, ST_SetSRID(ST_MakePoint(86.292467, 24.784643), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('neemuch', 'madhya pradesh', '432', '23', 75.141561, 24.591947, ST_SetSRID(ST_MakePoint(75.141561, 24.591947), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('banka', 'bihar', '225', '10', 86.837503, 24.854383, ST_SetSRID(ST_MakePoint(86.837503, 24.854383), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rewa', 'madhya pradesh', '430', '23', 81.587122, 24.755775, ST_SetSRID(ST_MakePoint(81.587122, 24.755775), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('satna', 'madhya pradesh', '429', '23', 80.831308, 24.531112, ST_SetSRID(ST_MakePoint(80.831308, 24.531112), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('guna', 'madhya pradesh', '458', '23', 77.198416, 24.555502, ST_SetSRID(ST_MakePoint(77.198416, 24.555502), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nawada', 'bihar', '237', '10', 85.589348, 24.810411, ST_SetSRID(ST_MakePoint(85.589348, 24.810411), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gaya', 'bihar', '236', '10', 84.934323, 24.69687, ST_SetSRID(ST_MakePoint(84.934323, 24.69687), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ashoknagar', 'madhya pradesh', '459', '23', 77.874987, 24.609808, ST_SetSRID(ST_MakePoint(77.874987, 24.609808), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('banas kantha', 'gujarat', '469', '24', 72.026407, 24.28735, ST_SetSRID(ST_MakePoint(72.026407, 24.28735), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jhalawar', 'rajasthan', '129', '08', 76.192399, 24.336005, ST_SetSRID(ST_MakePoint(76.192399, 24.336005), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('murshidabad', 'west bengal', '333', '19', 88.228491, 24.171087, ST_SetSRID(ST_MakePoint(88.228491, 24.171087), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sonbhadra', 'uttar pradesh', '200', '09', 83.051668, 24.408873, ST_SetSRID(ST_MakePoint(83.051668, 24.408873), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pakur', 'jharkhand', '353', '20', 87.662775, 24.563645, ST_SetSRID(ST_MakePoint(87.662775, 24.563645), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mandsaur', 'madhya pradesh', '433', '23', 75.404911, 24.204306, ST_SetSRID(ST_MakePoint(75.404911, 24.204306), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('munger', 'bihar', '226', '10', 86.525, 25.209631, ST_SetSRID(ST_MakePoint(86.525, 25.209631), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('giridih', 'jharkhand', '349', '20', 86.109936, 24.294271, ST_SetSRID(ST_MakePoint(86.109936, 24.294271), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dumka', 'jharkhand', '362', '20', 87.265822, 24.319742, ST_SetSRID(ST_MakePoint(87.265822, 24.319742), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('singrauli', 'madhya pradesh', '463', '23', 82.41879, 24.214869, ST_SetSRID(ST_MakePoint(82.41879, 24.214869), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('birbhum', 'west bengal', '334', '19', 87.663183, 23.954052, ST_SetSRID(ST_MakePoint(87.663183, 23.954052), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('deoghar', 'jharkhand', '350', '20', 86.738714, 24.328727, ST_SetSRID(ST_MakePoint(86.738714, 24.328727), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('palamu', 'jharkhand', '358', '20', 84.166247, 24.203523, ST_SetSRID(ST_MakePoint(84.166247, 24.203523), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sidhi', 'madhya pradesh', '462', '23', 81.833997, 24.221162, ST_SetSRID(ST_MakePoint(81.833997, 24.221162), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chatra', 'jharkhand', '347', '20', 84.886911, 24.173551, ST_SetSRID(ST_MakePoint(84.886911, 24.173551), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('garhwa', 'jharkhand', '346', '20', 83.698469, 24.102817, ST_SetSRID(ST_MakePoint(83.698469, 24.102817), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sagar', 'madhya pradesh', '427', '23', 78.759775, 23.849823, ST_SetSRID(ST_MakePoint(78.759775, 23.849823), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('patan', 'gujarat', '470', '24', 71.758668, 23.770242, ST_SetSRID(ST_MakePoint(71.758668, 23.770242), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('damoh', 'madhya pradesh', '428', '23', 79.52698, 23.811745, ST_SetSRID(ST_MakePoint(79.52698, 23.811745), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shajapur', 'madhya pradesh', '436', '23', 76.575025, 23.365712, ST_SetSRID(ST_MakePoint(76.575025, 23.365712), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vidisha', 'madhya pradesh', '443', '23', 77.813107, 23.892498, ST_SetSRID(ST_MakePoint(77.813107, 23.892498), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahesana', 'gujarat', '471', '24', 72.466719, 23.610324, ST_SetSRID(ST_MakePoint(72.466719, 23.610324), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rajgarh', 'madhya pradesh', '442', '23', 76.732996, 23.860772, ST_SetSRID(ST_MakePoint(76.732996, 23.860772), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shahdol', 'madhya pradesh', '460', '23', 81.473606, 23.629508, ST_SetSRID(ST_MakePoint(81.473606, 23.629508), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nadia', 'west bengal', '336', '19', 88.517322, 23.479312, ST_SetSRID(ST_MakePoint(88.517322, 23.479312), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jamtara', 'jharkhand', '363', '20', 86.907487, 23.976042, ST_SetSRID(ST_MakePoint(86.907487, 23.976042), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dungarpur', 'rajasthan', '124', '08', 73.853622, 23.731077, ST_SetSRID(ST_MakePoint(73.853622, 23.731077), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('katni', 'madhya pradesh', '450', '23', 80.403075, 23.752915, ST_SetSRID(ST_MakePoint(80.403075, 23.752915), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhanbad', 'jharkhand', '354', '20', 86.471811, 23.82769, ST_SetSRID(ST_MakePoint(86.471811, 23.82769), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('banswara', 'rajasthan', '125', '08', 74.364397, 23.478239, ST_SetSRID(ST_MakePoint(74.364397, 23.478239), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('umaria', 'madhya pradesh', '431', '23', 80.97397, 23.563021, ST_SetSRID(ST_MakePoint(80.97397, 23.563021), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('latehar', 'jharkhand', '359', '20', 84.442855, 23.719041, ST_SetSRID(ST_MakePoint(84.442855, 23.719041), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ratlam', 'madhya pradesh', '434', '23', 75.088893, 23.502441, ST_SetSRID(ST_MakePoint(75.088893, 23.502441), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bokaro', 'jharkhand', '355', '20', 85.997101, 23.69454, ST_SetSRID(ST_MakePoint(85.997101, 23.69454), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ramgarh', 'jharkhand', '361', '20', 85.562797, 23.634664, ST_SetSRID(ST_MakePoint(85.562797, 23.634664), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhopal', 'madhya pradesh', '444', '23', 77.390741, 23.470277, ST_SetSRID(ST_MakePoint(77.390741, 23.470277), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('purba bardhaman', 'west bengal', '335', '19', 87.947847, 23.359661, ST_SetSRID(ST_MakePoint(87.947847, 23.359661), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('koriya', 'chhattisgarh', '400', '22', 82.233358, 23.470247, ST_SetSRID(ST_MakePoint(82.233358, 23.470247), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ujjain', 'madhya pradesh', '435', '23', 75.668951, 23.33061, ST_SetSRID(ST_MakePoint(75.668951, 23.33061), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gandhinagar', 'gujarat', '473', '24', 72.69676, 23.254945, ST_SetSRID(ST_MakePoint(72.69676, 23.254945), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ahmadabad', 'gujarat', '474', '24', 72.246916, 22.784984, ST_SetSRID(ST_MakePoint(72.246916, 22.784984), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('raisen', 'madhya pradesh', '446', '23', 78.118957, 23.219926, ST_SetSRID(ST_MakePoint(78.118957, 23.219926), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('purulia', 'west bengal', '340', '19', 86.421757, 23.278001, ST_SetSRID(ST_MakePoint(86.421757, 23.278001), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sehore', 'madhya pradesh', '445', '23', 77.127175, 22.987298, ST_SetSRID(ST_MakePoint(77.127175, 22.987298), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ranchi', 'jharkhand', '364', '20', 85.373926, 23.328868, ST_SetSRID(ST_MakePoint(85.373926, 23.328868), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bankura', 'west bengal', '339', '19', 87.135757, 23.139285, ST_SetSRID(ST_MakePoint(87.135757, 23.139285), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lohardaga', 'jharkhand', '356', '20', 84.66966, 23.475441, ST_SetSRID(ST_MakePoint(84.66966, 23.475441), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('panch mahals', 'gujarat', '484', '24', 73.625629, 22.719882, ST_SetSRID(ST_MakePoint(73.625629, 22.719882), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jabalpur', 'madhya pradesh', '451', '23', 79.975297, 23.233695, ST_SetSRID(ST_MakePoint(79.975297, 23.233695), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gumla', 'jharkhand', '366', '20', 84.532606, 23.102486, ST_SetSRID(ST_MakePoint(84.532606, 23.102486), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dohad', 'gujarat', '485', '24', 74.112886, 22.861542, ST_SetSRID(ST_MakePoint(74.112886, 22.861542), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dewas', 'madhya pradesh', '437', '23', 76.457268, 22.744193, ST_SetSRID(ST_MakePoint(76.457268, 22.744193), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('anuppur', 'madhya pradesh', '461', '23', 81.682549, 23.056924, ST_SetSRID(ST_MakePoint(81.682549, 23.056924), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jhabua', 'madhya pradesh', '464', '23', 74.671697, 22.893487, ST_SetSRID(ST_MakePoint(74.671697, 22.893487), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north 24 parganas', 'west bengal', '337', '19', 88.730483, 22.726771, ST_SetSRID(ST_MakePoint(88.730483, 22.726771), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dindori', 'madhya pradesh', '453', '23', 81.050841, 22.89005, ST_SetSRID(ST_MakePoint(81.050841, 22.89005), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hooghly', 'west bengal', '338', '19', 88.07266, 22.883425, ST_SetSRID(ST_MakePoint(88.07266, 22.883425), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('khunti', 'jharkhand', '365', '20', 85.261883, 22.993863, ST_SetSRID(ST_MakePoint(85.261883, 22.993863), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('narsimhapur', 'madhya pradesh', '452', '23', 79.088376, 22.935989, ST_SetSRID(ST_MakePoint(79.088376, 22.935989), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dhar', 'madhya pradesh', '438', '23', 75.103551, 22.498432, ST_SetSRID(ST_MakePoint(75.103551, 22.498432), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jashpur', 'chhattisgarh', '402', '22', 83.862516, 22.801256, ST_SetSRID(ST_MakePoint(83.862516, 22.801256), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('indore', 'madhya pradesh', '439', '23', 75.782523, 22.71353, ST_SetSRID(ST_MakePoint(75.782523, 22.71353), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('saraikela-kharsawan', 'jharkhand', '369', '20', 85.949482, 22.848441, ST_SetSRID(ST_MakePoint(85.949482, 22.848441), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mandla', 'madhya pradesh', '454', '23', 80.512756, 22.638624, ST_SetSRID(ST_MakePoint(80.512756, 22.638624), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('purbi singhbhum', 'jharkhand', '357', '20', 86.451023, 22.583598, ST_SetSRID(ST_MakePoint(86.451023, 22.583598), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hoshangabad', 'madhya pradesh', '449', '23', 77.991276, 22.590934, ST_SetSRID(ST_MakePoint(77.991276, 22.590934), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('korba', 'chhattisgarh', '404', '22', 82.608384, 22.533723, ST_SetSRID(ST_MakePoint(82.608384, 22.533723), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pashchimi singhbhum', 'jharkhand', '368', '20', 85.518613, 22.421035, ST_SetSRID(ST_MakePoint(85.518613, 22.421035), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('howrah', 'west bengal', '341', '19', 88.063012, 22.524045, ST_SetSRID(ST_MakePoint(88.063012, 22.524045), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('simdega', 'jharkhand', '367', '20', 84.563817, 22.581699, ST_SetSRID(ST_MakePoint(84.563817, 22.581699), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kolkata', 'west bengal', '342', '19', 88.342914, 22.558473, ST_SetSRID(ST_MakePoint(88.342914, 22.558473), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kodarma', 'jharkhand', '348', '20', 85.665196, 24.498199, ST_SetSRID(ST_MakePoint(85.665196, 24.498199), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hazaribagh', 'jharkhand', '360', '20', 85.419161, 24.055608, ST_SetSRID(ST_MakePoint(85.419161, 24.055608), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('vaishali', 'bihar', '220', '10', 85.367368, 25.767504, ST_SetSRID(ST_MakePoint(85.367368, 25.767504), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('begusarai', 'bihar', '222', '10', 86.12839, 25.49751, ST_SetSRID(ST_MakePoint(86.12839, 25.49751), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhagalpur', 'bihar', '224', '10', 87.083145, 25.269397, ST_SetSRID(ST_MakePoint(87.083145, 25.269397), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lakhisarai', 'bihar', '227', '10', 86.137383, 25.161792, ST_SetSRID(ST_MakePoint(86.137383, 25.161792), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sheikhpura', 'bihar', '228', '10', 85.838728, 25.126302, ST_SetSRID(ST_MakePoint(85.838728, 25.126302), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('arwal', 'bihar', '240', '10', 84.676427, 25.162738, ST_SetSRID(ST_MakePoint(84.676427, 25.162738), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jehanabad', 'bihar', '239', '10', 85.016154, 25.155219, ST_SetSRID(ST_MakePoint(85.016154, 25.155219), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nalanda', 'bihar', '229', '10', 85.448173, 25.218852, ST_SetSRID(ST_MakePoint(85.448173, 25.218852), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('patna', 'bihar', '230', '10', 85.228132, 25.454497, ST_SetSRID(ST_MakePoint(85.228132, 25.454497), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('saran', 'bihar', '219', '10', 84.826097, 25.903738, ST_SetSRID(ST_MakePoint(84.826097, 25.903738), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('siwan', 'bihar', '218', '10', 84.386338, 26.16206, ST_SetSRID(ST_MakePoint(84.386338, 26.16206), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('muzaffarpur', 'bihar', '216', '10', 85.329422, 26.151863, ST_SetSRID(ST_MakePoint(85.329422, 26.151863), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('madhepura', 'bihar', '213', '10', 86.89738, 25.821287, ST_SetSRID(ST_MakePoint(86.89738, 25.821287), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('araria', 'bihar', '209', '10', 87.361765, 26.199087, ST_SetSRID(ST_MakePoint(87.361765, 26.199087), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('supaul', 'bihar', '208', '10', 86.808112, 26.244526, ST_SetSRID(ST_MakePoint(86.808112, 26.244526), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('madhubani', 'bihar', '207', '10', 86.221793, 26.402277, ST_SetSRID(ST_MakePoint(86.221793, 26.402277), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('purnia', 'bihar', '211', '10', 87.403958, 25.814959, ST_SetSRID(ST_MakePoint(87.403958, 25.814959), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('surajpur', 'chhattisgarh', '715', '22', 82.882731, 23.40193, ST_SetSRID(ST_MakePoint(82.882731, 23.40193), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('surguja', 'chhattisgarh', '401', '22', 83.226591, 22.928716, ST_SetSRID(ST_MakePoint(83.226591, 22.928716), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('aravalli', 'gujarat', '725', '24', 73.328509, 23.467603, ST_SetSRID(ST_MakePoint(73.328509, 23.467603), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahisagar', 'gujarat', '730', '24', 73.647991, 23.187665, ST_SetSRID(ST_MakePoint(73.647991, 23.187665), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('amethi', 'uttar pradesh', '706', '09', 81.640569, 26.288362, ST_SetSRID(ST_MakePoint(81.640569, 26.288362), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ghaziabad', 'uttar pradesh', '140', '09', 77.475842, 28.767767, ST_SetSRID(ST_MakePoint(77.475842, 28.767767), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('agar malwa', 'madhya pradesh', '724', '23', 76.088251, 23.814654, ST_SetSRID(ST_MakePoint(76.088251, 23.814654), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shahdara', 'delhi', '702', '07', 77.297258, 28.677443, ST_SetSRID(ST_MakePoint(77.297258, 28.677443), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('south east delhi', 'delhi', '703', '07', 77.274945, 28.542996, ST_SetSRID(ST_MakePoint(77.274945, 28.542996), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('north west delhi', 'delhi', '090', '07', 77.041158, 28.725892, ST_SetSRID(ST_MakePoint(77.041158, 28.725892), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sambhal', 'uttar pradesh', '754', '09', 78.551997, 28.455998, ST_SetSRID(ST_MakePoint(78.551997, 28.455998), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('charki dadri', 'haryana', '765', '06', 76.161821, 28.579064, ST_SetSRID(ST_MakePoint(76.161821, 28.579064), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('alipurduar', 'west bengal', '774', '19', 89.457457, 26.630739, ST_SetSRID(ST_MakePoint(89.457457, 26.630739), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('paschim bardhaman', 'west bengal', '777', '19', 87.159987, 23.661095, ST_SetSRID(ST_MakePoint(87.159987, 23.661095), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kalimpong', 'west bengal', '775', '19', 88.630288, 27.033133, ST_SetSRID(ST_MakePoint(88.630288, 27.033133), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ajmer', 'rajasthan', '119', '08', 74.772252, 26.23295, ST_SetSRID(ST_MakePoint(74.772252, 26.23295), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('cooch behar', 'west bengal', '329', '19', 89.346619, 26.29203, ST_SetSRID(ST_MakePoint(89.346619, 26.29203), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('uttar dinajpur', 'west bengal', '330', '19', 88.157915, 25.890655, ST_SetSRID(ST_MakePoint(88.157915, 25.890655), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('datia', 'madhya pradesh', '422', '23', 78.597313, 25.802977, ST_SetSRID(ST_MakePoint(78.597313, 25.802977), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rajsamand', 'rajasthan', '123', '08', 73.890543, 25.227557, ST_SetSRID(ST_MakePoint(73.890543, 25.227557), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mahoba', 'uttar pradesh', '169', '09', 79.72605, 25.363203, ST_SetSRID(ST_MakePoint(79.72605, 25.363203), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chhatarpur', 'madhya pradesh', '425', '23', 79.664631, 24.799186, ST_SetSRID(ST_MakePoint(79.664631, 24.799186), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chittaurgarh', 'rajasthan', '126', '08', 74.774445, 24.821617, ST_SetSRID(ST_MakePoint(74.774445, 24.821617), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('panna', 'madhya pradesh', '426', '23', 80.18881, 24.419268, ST_SetSRID(ST_MakePoint(80.18881, 24.419268), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sabar kantha', 'gujarat', '472', '24', 73.032645, 23.806015, ST_SetSRID(ST_MakePoint(73.032645, 23.806015), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kachchh', 'gujarat', '468', '24', 69.909453, 23.645939, ST_SetSRID(ST_MakePoint(69.909453, 23.645939), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('surendranagar', 'gujarat', '475', '24', 71.59406, 22.763365, ST_SetSRID(ST_MakePoint(71.59406, 22.763365), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kheda', 'gujarat', '483', '24', 72.952304, 22.837403, ST_SetSRID(ST_MakePoint(72.952304, 22.837403), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('anand', 'gujarat', '482', '24', 72.786956, 22.459263, ST_SetSRID(ST_MakePoint(72.786956, 22.459263), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kishanganj', 'bihar', '210', '10', 87.939168, 26.296656, ST_SetSRID(ST_MakePoint(87.939168, 26.296656), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('morbi', 'gujarat', '727', '24', 70.917196, 22.829722, ST_SetSRID(ST_MakePoint(70.917196, 22.829722), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('leh', 'ladakh', '003', '38', 76.805584, 35.036367, ST_SetSRID(ST_MakePoint(76.805584, 35.036367), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kargil', 'ladakh', '004', '38', 76.507525, 33.885734, ST_SetSRID(ST_MakePoint(76.507525, 33.885734), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kupwara', 'jammu and kashmir', '001', '01', 74.203632, 34.522927, ST_SetSRID(ST_MakePoint(74.203632, 34.522927), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bandipore', 'jammu and kashmir', '009', '01', 74.87329, 34.490548, ST_SetSRID(ST_MakePoint(74.87329, 34.490548), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baramula', 'jammu and kashmir', '008', '01', 74.308038, 34.164396, ST_SetSRID(ST_MakePoint(74.308038, 34.164396), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ganderbal', 'jammu and kashmir', '011', '01', 75.025069, 34.282067, ST_SetSRID(ST_MakePoint(75.025069, 34.282067), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('anantnag', 'jammu and kashmir', '014', '01', 75.32007, 33.8257, ST_SetSRID(ST_MakePoint(75.32007, 33.8257), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kishtwar', 'jammu and kashmir', '018', '01', 75.9659, 33.55281, ST_SetSRID(ST_MakePoint(75.9659, 33.55281), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('srinagar', 'jammu and kashmir', '010', '01', 74.926974, 34.116057, ST_SetSRID(ST_MakePoint(74.926974, 34.116057), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('badgam', 'jammu and kashmir', '002', '01', 74.640034, 33.925764, ST_SetSRID(ST_MakePoint(74.640034, 33.925764), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pulwama', 'jammu and kashmir', '012', '01', 75.016398, 33.940362, ST_SetSRID(ST_MakePoint(75.016398, 33.940362), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('punch', 'jammu and kashmir', '005', '01', 74.013777, 33.803232, ST_SetSRID(ST_MakePoint(74.013777, 33.803232), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shupiyan', 'jammu and kashmir', '013', '01', 74.818921, 33.733244, ST_SetSRID(ST_MakePoint(74.818921, 33.733244), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kulgam', 'jammu and kashmir', '015', '01', 74.840269, 33.601819, ST_SetSRID(ST_MakePoint(74.840269, 33.601819), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rajouri', 'jammu and kashmir', '006', '01', 74.380626, 33.273204, ST_SetSRID(ST_MakePoint(74.380626, 33.273204), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ramban', 'jammu and kashmir', '017', '01', 75.195274, 33.322429, ST_SetSRID(ST_MakePoint(75.195274, 33.322429), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('reasi', 'jammu and kashmir', '020', '01', 74.841195, 33.229271, ST_SetSRID(ST_MakePoint(74.841195, 33.229271), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('doda', 'jammu and kashmir', '016', '01', 75.706233, 33.089897, ST_SetSRID(ST_MakePoint(75.706233, 33.089897), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('lahul and spiti', 'himachal pradesh', '025', '02', 77.617634, 32.480473, ST_SetSRID(ST_MakePoint(77.617634, 32.480473), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chamba', 'himachal pradesh', '023', '02', 76.350628, 32.674973, ST_SetSRID(ST_MakePoint(76.350628, 32.674973), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jammu', 'jammu and kashmir', '021', '01', 74.749714, 32.798235, ST_SetSRID(ST_MakePoint(74.749714, 32.798235), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kathua', 'jammu and kashmir', '007', '01', 75.588757, 32.576511, ST_SetSRID(ST_MakePoint(75.588757, 32.576511), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('gurdaspur', 'punjab', '035', '03', 75.291149, 31.916591, ST_SetSRID(ST_MakePoint(75.291149, 31.916591), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kangra', 'himachal pradesh', '024', '02', 76.316059, 32.108472, ST_SetSRID(ST_MakePoint(76.316059, 32.108472), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kullu', 'himachal pradesh', '026', '02', 77.398824, 31.902939, ST_SetSRID(ST_MakePoint(77.398824, 31.902939), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hoshiarpur', 'punjab', '038', '03', 75.857686, 31.624738, ST_SetSRID(ST_MakePoint(75.857686, 31.624738), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('amritsar', 'punjab', '049', '03', 74.899434, 31.705877, ST_SetSRID(ST_MakePoint(74.899434, 31.705877), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mandi', 'himachal pradesh', '027', '02', 76.991931, 31.636032, ST_SetSRID(ST_MakePoint(76.991931, 31.636032), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kinnaur', 'himachal pradesh', '034', '02', 78.404404, 31.599627, ST_SetSRID(ST_MakePoint(78.404404, 31.599627), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('una', 'himachal pradesh', '029', '02', 76.209689, 31.57989, ST_SetSRID(ST_MakePoint(76.209689, 31.57989), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shimla', 'himachal pradesh', '033', '02', 77.632163, 31.19707, ST_SetSRID(ST_MakePoint(77.632163, 31.19707), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jalandhar', 'punjab', '037', '03', 75.56644, 31.212064, ST_SetSRID(ST_MakePoint(75.56644, 31.212064), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tarn taran', 'punjab', '050', '03', 74.841271, 31.337161, ST_SetSRID(ST_MakePoint(74.841271, 31.337161), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rupnagar', 'punjab', '051', '03', 76.487916, 31.06157, ST_SetSRID(ST_MakePoint(76.487916, 31.06157), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('uttarkashi', 'uttarakhand', '056', '05', 78.607509, 30.972668, ST_SetSRID(ST_MakePoint(78.607509, 30.972668), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('solan', 'himachal pradesh', '031', '02', 76.90909, 31.045186, ST_SetSRID(ST_MakePoint(76.90909, 31.045186), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shahid bhagat singh nagar', 'punjab', '039', '03', 76.154184, 31.109789, ST_SetSRID(ST_MakePoint(76.154184, 31.109789), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('fazilka', 'punjab', '701', '03', 74.164579, 30.276911, ST_SetSRID(ST_MakePoint(74.164579, 30.276911), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('moga', 'punjab', '042', '03', 75.171648, 30.763742, ST_SetSRID(ST_MakePoint(75.171648, 30.763742), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ludhiana', 'punjab', '041', '03', 75.833145, 30.805393, ST_SetSRID(ST_MakePoint(75.833145, 30.805393), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chamoli', 'uttarakhand', '057', '05', 79.577037, 30.493749, ST_SetSRID(ST_MakePoint(79.577037, 30.493749), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('dehradun', 'uttarakhand', '060', '05', 77.967656, 30.470394, ST_SetSRID(ST_MakePoint(77.967656, 30.470394), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sirmaur', 'himachal pradesh', '032', '02', 77.430861, 30.666915, ST_SetSRID(ST_MakePoint(77.430861, 30.666915), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('s.a.s. nagar', 'punjab', '052', '03', 76.739433, 30.682468, ST_SetSRID(ST_MakePoint(76.739433, 30.682468), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('faridkot', 'punjab', '045', '03', 74.779189, 30.613191, ST_SetSRID(ST_MakePoint(74.779189, 30.613191), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('fatehgarh sahib', 'punjab', '040', '03', 76.376775, 30.641484, ST_SetSRID(ST_MakePoint(76.376775, 30.641484), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('tehri garhwal', 'uttarakhand', '059', '05', 78.534888, 30.436278, ST_SetSRID(ST_MakePoint(78.534888, 30.436278), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('chandigarh', 'chandigarh', '055', '04', 76.780819, 30.7289, ST_SetSRID(ST_MakePoint(76.780819, 30.7289), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sri muktsar sahib', 'punjab', '044', '03', 74.539071, 30.300398, ST_SetSRID(ST_MakePoint(74.539071, 30.300398), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rudraprayag', 'uttarakhand', '058', '05', 79.051847, 30.506244, ST_SetSRID(ST_MakePoint(79.051847, 30.506244), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pithoragarh', 'uttarakhand', '062', '05', 80.344632, 30.112911, ST_SetSRID(ST_MakePoint(80.344632, 30.112911), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sangrur', 'punjab', '053', '03', 75.868929, 30.21149, ST_SetSRID(ST_MakePoint(75.868929, 30.21149), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('barnala', 'punjab', '054', '03', 75.498172, 30.388149, ST_SetSRID(ST_MakePoint(75.498172, 30.388149), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bathinda', 'punjab', '046', '03', 75.038599, 30.184703, ST_SetSRID(ST_MakePoint(75.038599, 30.184703), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('patiala', 'punjab', '048', '03', 76.351897, 30.282875, ST_SetSRID(ST_MakePoint(76.351897, 30.282875), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('yamunanagar', 'haryana', '071', '06', 77.300943, 30.234368, ST_SetSRID(ST_MakePoint(77.300943, 30.234368), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('saharanpur', 'uttar pradesh', '132', '09', 77.546005, 29.950856, ST_SetSRID(ST_MakePoint(77.546005, 29.950856), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ganganagar', 'rajasthan', '099', '08', 73.570671, 29.396331, ST_SetSRID(ST_MakePoint(73.570671, 29.396331), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mansa', 'punjab', '047', '03', 75.436614, 29.909873, ST_SetSRID(ST_MakePoint(75.436614, 29.909873), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kurukshetra', 'haryana', '072', '06', 76.782542, 30.037965, ST_SetSRID(ST_MakePoint(76.782542, 30.037965), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bageshwar', 'uttarakhand', '063', '05', 79.859748, 29.997445, ST_SetSRID(ST_MakePoint(79.859748, 29.997445), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('haridwar', 'uttarakhand', '068', '05', 77.996454, 29.881223, ST_SetSRID(ST_MakePoint(77.996454, 29.881223), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pauri garhwal', 'uttarakhand', '061', '05', 78.763796, 29.880097, ST_SetSRID(ST_MakePoint(78.763796, 29.880097), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kaithal', 'haryana', '073', '06', 76.416454, 29.811408, ST_SetSRID(ST_MakePoint(76.416454, 29.811408), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sirsa', 'haryana', '079', '06', 74.901434, 29.615705, ST_SetSRID(ST_MakePoint(74.901434, 29.615705), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hanumangarh', 'rajasthan', '100', '08', 74.561396, 29.266248, ST_SetSRID(ST_MakePoint(74.561396, 29.266248), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('karnal', 'haryana', '074', '06', 76.896546, 29.687594, ST_SetSRID(ST_MakePoint(76.896546, 29.687594), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('almora', 'uttarakhand', '064', '05', 79.504583, 29.69097, ST_SetSRID(ST_MakePoint(79.504583, 29.69097), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('jind', 'haryana', '077', '06', 76.306068, 29.436376, ST_SetSRID(ST_MakePoint(76.306068, 29.436376), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('fatehabad', 'haryana', '078', '06', 75.576992, 29.569313, ST_SetSRID(ST_MakePoint(75.576992, 29.569313), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bijnor', 'uttar pradesh', '134', '09', 78.388523, 29.386101, ST_SetSRID(ST_MakePoint(78.388523, 29.386101), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('muzaffarnagar', 'uttar pradesh', '133', '09', 77.725628, 29.415508, ST_SetSRID(ST_MakePoint(77.725628, 29.415508), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hisar', 'haryana', '080', '06', 75.822652, 29.211207, ST_SetSRID(ST_MakePoint(75.822652, 29.211207), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('nainital', 'uttarakhand', '066', '05', 79.463924, 29.317537, ST_SetSRID(ST_MakePoint(79.463924, 29.317537), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('panipat', 'haryana', '075', '06', 76.927708, 29.333654, ST_SetSRID(ST_MakePoint(76.927708, 29.333654), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('champawat', 'uttarakhand', '065', '05', 80.069073, 29.281114, ST_SetSRID(ST_MakePoint(80.069073, 29.281114), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('udham singh nagar', 'uttarakhand', '067', '05', 79.469897, 29.043018, ST_SetSRID(ST_MakePoint(79.469897, 29.043018), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('sonipat', 'haryana', '076', '06', 76.874611, 29.055958, ST_SetSRID(ST_MakePoint(76.874611, 29.055958), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('baghpat', 'uttar pradesh', '139', '09', 77.308357, 29.057315, ST_SetSRID(ST_MakePoint(77.308357, 29.057315), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('meerut', 'uttar pradesh', '138', '09', 77.78247, 29.035398, ST_SetSRID(ST_MakePoint(77.78247, 29.035398), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('moradabad', 'uttar pradesh', '135', '09', 78.787745, 28.898671, ST_SetSRID(ST_MakePoint(78.787745, 28.898671), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bikaner', 'rajasthan', '101', '08', 73.174542, 28.177359, ST_SetSRID(ST_MakePoint(73.174542, 28.177359), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rampur', 'uttar pradesh', '136', '09', 79.115806, 28.810489, ST_SetSRID(ST_MakePoint(79.115806, 28.810489), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bhiwani', 'haryana', '081', '06', 75.890708, 28.778299, ST_SetSRID(ST_MakePoint(75.890708, 28.778299), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('rohtak', 'haryana', '082', '06', 76.530205, 28.911563, ST_SetSRID(ST_MakePoint(76.530205, 28.911563), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('shamli', 'uttar pradesh', '704', '09', 77.282469, 29.500639, ST_SetSRID(ST_MakePoint(77.282469, 29.500639), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('firozpur', 'punjab', '043', '03', 74.703787, 30.914061, ST_SetSRID(ST_MakePoint(74.703787, 30.914061), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pathankot', 'punjab', '773', '03', 75.616878, 32.297251, ST_SetSRID(ST_MakePoint(75.616878, 32.297251), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('udhampur', 'jammu and kashmir', '019', '01', 75.303008, 32.894248, ST_SetSRID(ST_MakePoint(75.303008, 32.894248), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('samba', 'jammu and kashmir', '022', '01', 75.093451, 32.57805, ST_SetSRID(ST_MakePoint(75.093451, 32.57805), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('kapurthala', 'punjab', '036', '03', 75.39942, 31.354393, ST_SetSRID(ST_MakePoint(75.39942, 31.354393), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('panchkula', 'haryana', '069', '06', 76.976593, 30.682349, ST_SetSRID(ST_MakePoint(76.976593, 30.682349), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('ambala', 'haryana', '070', '06', 76.935892, 30.326686, ST_SetSRID(ST_MakePoint(76.935892, 30.326686), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('aurangabad', 'bihar', '235', '10', 84.409084, 24.790448, ST_SetSRID(ST_MakePoint(84.409084, 24.790448), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('balrampur', 'chhattisgarh', '716', '22', 83.500867, 23.592589, ST_SetSRID(ST_MakePoint(83.500867, 23.592589), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('balrampur', 'uttar pradesh', '182', '09', 82.375755, 27.484307, ST_SetSRID(ST_MakePoint(82.375755, 27.484307), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hamirpur', 'uttar pradesh', '168', '09', 79.865367, 25.750927, ST_SetSRID(ST_MakePoint(79.865367, 25.750927), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('hamirpur', 'himachal pradesh', '028', '02', 76.525501, 31.666611, ST_SetSRID(ST_MakePoint(76.525501, 31.666611), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pratapgarh', 'rajasthan', '131', '08', 74.651242, 24.029329, ST_SetSRID(ST_MakePoint(74.651242, 24.029329), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('pratapgarh', 'uttar pradesh', '173', '09', 81.829044, 25.872822, ST_SetSRID(ST_MakePoint(81.829044, 25.872822), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('bilaspur', 'himachal pradesh', '030', '02', 76.669582, 31.371368, ST_SetSRID(ST_MakePoint(76.669582, 31.371368), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('niwari', 'madhya pradesh', '782', '23', 78.749063, 25.284492, ST_SetSRID(ST_MakePoint(78.749063, 25.284492), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('muzaffarabad', 'jammu and kashmir', '992', '01', 73.923262, 34.595888, ST_SetSRID(ST_MakePoint(73.923262, 34.595888), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;

INSERT INTO indian_district_centroids (district_name, state_name, district_code, state_code, longitude, latitude, geom)
VALUES ('mirpur', 'jammu and kashmir', '991', '01', 73.928934, 33.252191, ST_SetSRID(ST_MakePoint(73.928934, 33.252191), 4326))
ON CONFLICT (state_code, district_code) 
DO UPDATE SET 
    district_name = EXCLUDED.district_name,
    state_name = EXCLUDED.state_name,
    longitude = EXCLUDED.longitude,
    latitude = EXCLUDED.latitude,
    geom = EXCLUDED.geom;
