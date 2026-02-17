CREATE DATABASE IF NOT EXISTS messageboard;
USE messageboard;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(16) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  role ENUM('admin', 'user') NOT NULL DEFAULT 'user',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, password, email, role) VALUES
('admin', 'adminpassword', 'admin@email.com', 'admin'),
('user1', 'user1password', 'user1@email.com', 'user'),
('user2', 'user2password', 'user2@email.com', 'user');

CREATE TABLE posts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE responses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  post_id INT NOT NULL,
  user_id INT NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE followers (
  user_id INT NOT NULL,
  follower_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, follower_id),
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (follower_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE VIEW v_posts AS
SELECT
  users.username,
  posts.title,
  posts.content,
  posts.created_at
FROM
  users
JOIN posts ON users.id = posts.user_id;

CREATE VIEW v_responses AS
SELECT
  users.username,
  responses.content,
  posts.title AS post_title,
  responses.created_at
FROM users
JOIN responses ON users.id = responses.user_id
JOIN posts ON responses.post_id = posts.id;


INSERT INTO posts (user_id, title, content) VALUES
(
  (SELECT id FROM users WHERE username = 'admin'),
  'Hola mundo',
  'Estamos probando el sistema de posts, que tal funciona?'
);

INSERT INTO responses (post_id, user_id, content) VALUES
(
  (SELECT id FROM posts WHERE title = 'Hola mundo'),
  (SELECT id FROM users WHERE username = 'user1'),
  'Parece que funciona!'
),
(
  (SELECT id FROM posts WHERE title = 'Hola mundo'),
  (SELECT id FROM users WHERE username = 'user2'),
  'Las respuestas parecen funcionar bien!'
);

CREATE DATABASE IF NOT EXISTS movies;
USE movies;

CREATE TABLE movies (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(40) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE genres (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE movies_genres (
  movie_id INT REFERENCES movies(id),
  genre_id INT REFERENCES genres(id),
  PRIMARY KEY (movie_id, genre_id)
);

INSERT INTO movies (title) VALUES
('Origen'),
('The end of Evangelion'),
('Todo a la vez en todas partes');

INSERT INTO genres (name) VALUES 
('Ciencia Ficción'),
('Accion'),
('Animacion'),
('Comedia');

INSERT INTO movies_genres(movie_id, genre_id) VALUES
(
  (SELECT id FROM movies WHERE title = 'Origen'),
  (SELECT id FROM genres WHERE name = 'Accion')
),
(
  (SELECT id FROM movies WHERE title = 'Origen'),
  (SELECT id FROM genres WHERE name = 'Ciencia Ficción')
),
(
  (SELECT id FROM movies WHERE title = 'The end of Evangelion'),
  (SELECT id FROM genres WHERE name = 'Animacion')
),
(
  (SELECT id FROM movies WHERE title = 'Todo a la vez en todas partes'),
  (SELECT id FROM genres WHERE name = 'Accion')
),
(
  (SELECT id FROM movies WHERE title = 'Todo a la vez en todas partes'),
  (SELECT id FROM genres WHERE name = 'Comedia')
),
(
  (SELECT id FROM movies WHERE title = 'Todo a la vez en todas partes'),
  (SELECT id FROM genres WHERE name = 'Ciencia Ficción')
);

CREATE DATABASE IF NOT EXISTS test1;
USE test1;

CREATE TABLE prueba (
  id INT AUTO_INCREMENT PRIMARY KEY,
  content VARCHAR(250),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO prueba (content) VALUES
('mySQL te deja crear multiples databases'),
('Cada una con multiples tablas');

CREATE DATABASE IF NOT EXISTS test2;
USE test2;

CREATE TABLE prueba (
  id INT AUTO_INCREMENT PRIMARY KEY,
  content VARCHAR(250),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO prueba (content) VALUES
('Cada usuario pueden tener acceso a diferentes bases de datos'),
('Tambien podemos limitar acceso a diferentes tablas dentro de una misma base de datos'),
('Y limitar que comandos de SQL pueden ejecutar');


