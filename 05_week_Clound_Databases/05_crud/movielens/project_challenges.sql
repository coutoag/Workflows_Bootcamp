select * from movies;

SELECT title, genres
FROM movies
ORDER BY title
LIMIT 10;

select count(*) from movies

select * style from movies where style like 'pure drama' limit 10;

SELECT genre
FROM movies
WHERE only Drama
GROUP BY genre
HAVING <condition_on_the_group_level>
ORDER BY pure drama
LIMIT 10;

select *
from movies 
where genres like 'Drama'
limit 10;

select count(*)
from movies 
where genres like 'Drama'
limit 10;


select *
from movies 
where genres like '%Drama%'
limit 10;

select *
from movies
where genres not like '%Drama%';

select count (*)
from movies
where year = 2003;

select *
from movies
where year < 1910;

select *
from movies
where title like '%Star Wars%';


