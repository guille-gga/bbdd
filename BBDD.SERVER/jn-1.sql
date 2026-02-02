SELECT 
autores.nombre AS autor,
libros.titulo AS libro,
generos.nombre AS genero
usuarios.nombre AS libro, 
libros.titulo AS libro, 
reseñas.puntuacion AS libro, 

FROM libros
JOIN libros_autores ON libros.id = libros_autores.libro_id
JOIN autores ON libros_autores.autores_id = autor.id
JOIN libros_generos ON libro_id

FROM reseñas
JOIN usuarios ON reseñas.usuario_id = usuarios.id
JOIN libros ON reseñas.libro_id = libros.id;