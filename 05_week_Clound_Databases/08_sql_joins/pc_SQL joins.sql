--AGGREGATING DATA WITH SQL
--Project Challenges:  SQL Joins

select m.title, l.imdb_id 
from movies 
full join links 
on m.movie_id = l.movie_id 
order by l.imdb_id 
limit 5;

select count(m.movie_id) as drama_moview
from movies 
join genres  
on m.movie_id = g.movie_id
where g.genre = 'Drama';

select count(*) 
from tags 
where tag ilike '%fun%';

select m.title 
from movies 
left join tags
on m.movie_id = t.movie_id
where t.movie_id is null
limit 1;

select g.genre, avg(r.rating) as average_genre_rating
from genres
join ratings
on g.movie_id = r.movie_id 
group by g.genre
order by avg(r.rating) desc
limit 3;

select m.title, count(r.rating) as number_of_ratings
from movies
join ratings 
on m.movie_id = r.movie_id
group by m.movie_id, m.title
order by number_of_ratings desc 
limit 10;

select m.title, avg(r.rating) as average_movie_rating
from movies
join ratings r 
on m.movie_id = r.movie_id
where m.title ilike '%star wars%'
group by m.movie_id, m.title
having count(r.rating) >=40
order by average_movie_rating desc;

drop table if exists genre_ratings;

create table genre_ratings
as (select g.genre, round(avg(r.rating)::numeric,2) as average_genre_rating
from genres  
join ratings 
on g.movie_id = r.movie_id 
group by g.genre
order by avg(r.rating) desc
);

select * from genre_ratings limit 100;
