# Respuesta a las preguntas

## Ejercicio

Responde las siguientes preguntas en este mismo `README.md` dentro de tu repositorio:

1. ¿Cual es la contraseña para `root`?

- rootrootroot

2. ¿Cual es la contraseña para `user`?



3. ¿Donde puedes cambiar estas contraseñas si quieres que al arrancar el contenedor de Docker estas tengan otros valores?

en el archivo `Dokerfile`

5. ¿A que bases de datos tiene acceso `root`?

`information_schema`,`mysql` ,`performance_schema` ,`sys` ,`messageboard,movies` ,`test1 `, `test2`

6. De todas esas bases de datos, cuales pertenecen a configuraciones internas y cuales han sido creadas por el `schema.sql` presente en el repositorio?

- Internas: `information_schema,mysql`,` performance_schema`,`sys`

- Creadas:`messageboard`,` movies`, `test1`,`test2`

7. ¿A que bases de datos tiene acceso `user`?

`messageboard` y `information_schema`

8. ¿Por qué `user` solo tiene acceso a una de las bases de datos creadas por el `schema.sql`? Analiza el archivo `Dockerfile` para entenderlo.

Porque Docker da acceso a la base de datos que pongas en MYSQL_DATABASE, como los test.

9. Dale todos los permisos (lectura y escritura) al usuario user a todas la tablas de la base de datos test1. ¿Que comandos usaste para esto?
10.Demuestra que el usuario user puede tanto leer* como escribir nuevos datos en la base de datos test1 tras el cambio, haz un screenshot en el que lo demuestres y adjuntalo a continuacion.
11.Crea un usuario llamado dev, con permisos solo de lectura en messageboard, y de lectura y escritura en movies, ¿que comandos usaste para esto?
12.Demuestra que el usuario dev puede leer pero no le deja editar en la base de datos messageboard y que puede tanto leer como escribir en movies, haz un screenshot en el que lo demuestres y adjuntalo a continuacion.

