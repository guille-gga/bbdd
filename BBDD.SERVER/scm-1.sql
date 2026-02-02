DROP TABLE IF EXISTS autores;
DROP TABLE IF EXISTS generos;
DROP TABLE IF EXISTS libros;
DROP TABLE IF EXISTS libros_autores;
DROP TABLE IF EXISTS libros_generos;
DROP TABLE IF EXISTS resenas;
DROP TABLE IF EXISTS usuarios;

CREATE TABLE autores (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL
);

CREATE TABLE generos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE libros (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT NOT NULL,
  ISBN TEXT NOT NULL UNIQUE,
  año INTEGER NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_usuario TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE resenas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    usuario_id INTEGER NOT NULL REFERENCES usuarios (id),
    libro_id INTEGER NOT NULL REFERENCES libros (id),
    puntuacion INTEGER CHECK (puntuacion BETWEEN 1 AND 5),
    
  
);


INSERT INTO autores (nombre) VALUES
('Allen G. Taylor'),
('Joseph Heller'),
('Karel Capek'),
('George Orwell'),
('Patrick Rothfuss');

INSERT INTO generos (nombre) VALUES
('Informática'),
('Satírico'),
('Ciencia Ficción'),
('Distopía'),
('Fantasía');

INSERT INTO libros (titulo, ISBN, año) VALUES
('SQL para Dummies', '978-1-119-56783-4', 2020),
('Trampa 22', '978-0-684-83828-1', 1961),
('La guerra de las salamandras', '978-84-376-0494-7', 1936),
('1984', '978-0-452-28423-4', 1949),
('El nombre del viento', '978-84-08-09376-2', 2007);

CREATE TABLE libros_autores (
  autor_id INTEGER NOT NULL REFERENCES autores(id),
  libro_id INTEGER NOT NULL REFERENCES libros(id),
  PRIMARY KEY(autor_id, libro_id)
);

CREATE TABLE libros_generos (
  libro_id INTEGER NOT NULL REFERENCES libros(id),
  genero_id INTEGER NOT NULL REFERENCES generos(id),
  PRIMARY KEY (libro_id, genero_id)
);

INSERT INTO usuarios (nombre, gmail) VALUES
('Eusebio', 'tu.eusebio_de_confi_2009@gmail.com'),

(
    (SELECT id FROM usuarios WHERE nombre = 'Eusebio'),
    (SELECT id FROM usuarios WHERE gmail = 'tu.eusebio_de_confi_2009@gmail.com'),
    (SELECT id FROM libros WHERE titulo = '1984'),
    
)

INSERT INTO reseñas (user, libro, puntuacion) VALUES

(
    (SELECT id FROM usuarios WHERE user = 'Eusebio'),
    (SELECT id FROM libros WHERE titulo = '1984'),
    (SELECT id FROM reseñas WHERE puntuacion = '4,3'),

    
);


INSERT INTO libros_autores (autor_id, libro_id) VALUES
(
  (SELECT id FROM autores WHERE nombre = 'Allen G. Taylor'),
  (SELECT id FROM libros WHERE titulo = 'SQL para Dummies')
),
(
  (SELECT id FROM autores WHERE nombre = 'Joseph Heller'),
  (SELECT id FROM libros WHERE titulo = 'Trampa 22')
),
(
  (SELECT id FROM autores WHERE nombre = 'Karel Capek'),
  (SELECT id FROM libros WHERE titulo = 'La guerra de las salamandras')
),
(
  (SELECT id FROM autores WHERE nombre = 'George Orwell'),
  (SELECT id FROM libros WHERE titulo = '1984')
),
(
  (SELECT id FROM autores WHERE nombre = 'Patrick Rothfuss'),
  (SELECT id FROM libros WHERE titulo = 'El nombre del viento')
);

INSERT INTO libros_generos (libro_id, genero_id) VALUES
(
  (SELECT id FROM libros WHERE titulo = 'SQL para Dummies'),
  (SELECT id FROM generos WHERE nombre = 'Informática')
),
(
  (SELECT id FROM libros WHERE titulo = 'Trampa 22'),
  (SELECT id FROM generos WHERE nombre = 'Satírico')
),
(
  (SELECT id FROM libros WHERE titulo = 'La guerra de las salamandras'),
  (SELECT id FROM generos WHERE nombre = 'Ciencia Ficción')
),
(
  (SELECT id FROM libros WHERE titulo = 'La guerra de las salamandras'),
  (SELECT id FROM generos WHERE nombre = 'Distopía')
),
(
  (SELECT id FROM libros WHERE titulo = '1984'),
  (SELECT id FROM generos WHERE nombre = 'Distopía')
),
(
  (SELECT id FROM libros WHERE titulo = 'El nombre del viento'),
  (SELECT id FROM generos WHERE nombre = 'Fantasía')
);


--usuarios ==> usuario_id ==> libros ==> libros_id ==> 
