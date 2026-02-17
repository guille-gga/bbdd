# Respuesta a las preguntas

## Ejercicio

Responde las siguientes preguntas en este mismo `README.md` dentro de tu repositorio:

1. ¿Cual es la contraseña para `root`?

- rootrootroot

2. ¿Cual es la contraseña para `user`?



3. ¿Donde puedes cambiar estas contraseñas si quieres que al arrancar el contenedor de Docker estas tengan otros valores?

en el archivo Dokerfile

4. Comprueba los usuarios que existen en la base de datos con `SELECT user,host FROM mysql.user;`, ¿que resultado devuelve?



> Cuidado con escribir este comando manualmente, mycli puede provocar errores por el autocompletado, es mas fácil escribir un `SELECT * FROM mysql.user;` y luego modificar el * por el nombre de columnas que queremos obtener.

5. ¿A que bases de datos tiene acceso `root`?
6. De todas esas bases de datos, cuales pertenecen a configuraciones internas y cuales han sido creadas por el `schema.sql` presente en el repositorio?
7. ¿A que bases de datos tiene acceso `user`?
8. ¿Por qué `user` solo tiene acceso a una de las bases de datos creadas por el `schema.sql`? Analiza el archivo `Dockerfile` para entenderlo.
9. Dale todos los permisos (lectura y escritura) al usuario `user` a todas la tablas de la base de datos `test1`. ¿Que comandos usaste para esto?
10. Demuestra que el usuario `user` puede tanto *leer** como **escribir** nuevos datos en la base de datos `test1` tras el cambio, haz un *screenshot* en el que lo demuestres y adjuntalo a continuacion.
11. Crea un usuario llamado `dev`, con permisos **solo de lectura** en messageboard, y de **lectura y escritura** en movies, ¿que comandos usaste para esto?
12. Demuestra que el usuario `dev` puede leer pero no le deja editar en la base de datos *messageboard* y que puede tanto leer como escribir en *movies*, haz un *screenshot* en el que lo demuestres y adjuntalo a continuacion.
