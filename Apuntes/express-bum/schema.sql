DROP TABLE IF EXISTS movies;
CREATE TABLE movies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT UNIQUE NOT NULL,
    genre TEXT UNIQUE NOT NULL
);


INSERT INTO movies (title,genre) VALUES
("Matrix","Drama"),
("BobEsponja","Animation"),
("Forever Rich","Action");
