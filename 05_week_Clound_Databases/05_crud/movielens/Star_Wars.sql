DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
    movield INTEGER not null,
    title VARCHAR(255) not null,
    genres VARCHAR(255),
    year INTEGER
);

\COPY movies FROM './movies.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';