DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS genres;ç
DROP TABLE IF EXISTS movieGenres;
CREATE TABLE movies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT UNIQUE NOT NULL,
    year INTEGER PRIMARY KEY,
    
);

CREATE TABLE genres(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE NOT NULL,
    
);

CREATE TABLE movieGenres(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE
);


INSERT INTO movies ('title') VALUES
('The Matrix'),
('Arma letal'),
('The endo of evangelion');


INSERT INTO genres ('name') VALUES
('Action'),
('Drama'),
('Sci-Fi'),
('Animacion');

INSERT INTO movieGenres('movieID','genreID') VALUES
((SELECT id FROM movies WHERE title='The Matrix'),(SELECT id FROM genres WHERE name='Sci-fi')),
((SELECT id FROM movies WHERE title='Arma letal'),(SELECT id FROM genres WHERE name='Action')),
((SELECT id FROM movies WHERE title='The endo of evangelion'),(SELECT id FROM genres WHERE name='Drama'));
((SELECT id FROM movies WHERE title='The endo of evangelion'),(SELECT id FROM genres WHERE name='Animacion'));


