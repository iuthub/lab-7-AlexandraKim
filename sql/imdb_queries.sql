SELECT * from movies WHERE year = 1995

SELECT COUNT(*) from actors a
JOIN roles r on r.actor_id = a.id
JOIN movies m on m.id = r.movie_id
WHERE m.name = 'Lost in Translation'

SELECT a.first_name, a.last_name from actors a
JOIN roles r on r.actor_id = a.id
JOIN movies m on m.id = r.movie_id
WHERE m.name = 'Lost in Translation'

SELECT d.first_name, d.last_name from directors d
JOIN movies_directors md on md.director_id = d.id
JOIN movies m on m.id = md.movie_id
WHERE m.name = 'Fight Club'

SELECT COUNT(*) FROM movies m 
JOIN movies_directors md on md.movie_id = m.id
JOIN directors d on d.id = md.director_id
where d.first_name = 'Clint' and d.last_name = 'Eastwood'

SELECT m.name FROM movies m 
JOIN movies_directors md on md.movie_id = m.id
JOIN directors d on d.id = md.director_id
where d.first_name = 'Clint' and d.last_name = 'Eastwood'

select d.first_name, d.last_name FROM directors d 
JOIN movies_directors md on md.director_id = d.id
JOIN movies_genres mg on mg.movie_id = md.movie_id
WHERE mg.genre = 'Horror'

SELECT a.first_name, a.last_name from actors a 
JOIN roles r on r.actor_id = a.id
JOIN movies_directors md on md.movie_id = r.movie_id
JOIN directors d on md.director_id = d.id
WHERE d.first_name = 'Christopher' and d.last_name = 'Nolan'


CREATE DATABASE blog;
CREATE TABLE users (
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username varchar(250),
    email varchar(250),
    password varchar(250),
    fullname varchar(250),
    dob date
)

CREATE TABLE posts (
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title varchar(250),
    body text,
    publishDate date,
    userId int,
    FOREIGN KEY (userId) REFERENCES users(id)
) 