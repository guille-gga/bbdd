SELECT 
autores.nombre AS autor,
libros.titulo AS libro,
generos.nombre AS genero
usuarios.nombre AS libro, 
libros.titulo AS libro, 
resenas.puntuacion AS libro, 

FROM libros
JOIN libros_autores ON libros.id = libros_autores.libro_id
JOIN autores ON libros_autores.autores_id = autor.id
JOIN libros_generos ON libro_id

FROM resenas
JOIN usuarios ON resenas.usuario_id = usuarios.id
JOIN libros ON resenas.libro_id = libros.id;