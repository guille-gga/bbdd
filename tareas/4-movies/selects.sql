SELECT movies.message, movies.created_at
FROM movies
JOIN movies ON genres.id = movies.user_id;

SELECT movies.title, genres.name  
FROM movies
JOIN genres ON movies.id = genres.id;

