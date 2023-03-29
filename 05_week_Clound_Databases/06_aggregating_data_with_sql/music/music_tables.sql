DROP TABLE IF EXISTS bands;
CREATE TABLE bands (
    band_name VARCHAR(255) primary key,
    style VARCHAR(255),
    members INT
);
\COPY bands FROM 'bands.csv' DELIMITER ',' CSV HEADER;

