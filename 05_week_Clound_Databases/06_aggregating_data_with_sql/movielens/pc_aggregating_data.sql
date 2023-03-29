--AGGREGATING DATA WITH SQL
--Project Challenges:  Solve with SQL

select * from movies;

select count(*)
from ratings;

select genres, count(genres) as genres_count
from movies
group by genres;

select distinct tag
from tags
where movieId = 60756;

select year, count(*) as movie_count
from movies
where year between 1990 and 2000
group BY year;

select year, count(*) as movie_count
from movies
group by year
order by movie_count desc
limit 1;

select movieId, count(movieId) as count_movie_ratings
from ratings
group by movieId
order by count_movie_ratings DESC
limit 10;

with avg_ratings as (
  select movieId, avg(rating) as avg_rating, count(rating) as rating_count
  from ratings
  group by movieId
)
select movieId, avg_rating, rating_count
from avg_ratings
where rating_count >= 50
order by avg_rating desc
limit 10;

SELECT *
FROM movies
where genres like 'Drama'
limit 10;

