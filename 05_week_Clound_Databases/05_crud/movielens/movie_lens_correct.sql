
DROP TABLE IF EXISTS links;
CREATE TABLE links (
    movield INTEGER not null,
    imdbld INTEGER,
    tmdbld INTEGER
);
\COPY links FROM './links.csv' DELIMITER ',' CSV HEADER;
DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
    movieId INTEGER,
    userId INTEGER,
    rating FLOAT,
    timestamp INTEGER
);
\COPY ratings FROM './ratings.csv' DELIMITER ',' CSV HEADER;
DROP TABLE IF EXISTS tags;
CREATE TABLE tags (
    userId INTEGER,
    movieId INTEGER,
    tag VARCHAR(255),
    timestamp INTEGER
);
\COPY tags FROM './tags.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
    movield INTEGER not null,
    title VARCHAR(255) not null,
    genres VARCHAR(255),
    year INTEGER
);

\COPY movies FROM './movies.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8';










