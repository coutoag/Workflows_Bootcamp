--AGGREGATING DATA WITH SQL
--Project Challenges:  Foreign Keys

DROP TABLE IF EXISTS links;
CREATE TABLE links (
    movie_id INT primary key,
    imdb_id INT,
    tmdb_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

