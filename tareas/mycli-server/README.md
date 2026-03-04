## PROBLEMAS

SQLite3 no reconoce a Usuarios, no se si alomejor se me ha pasado algo o mi PC le falta instalar algo.

## Dominio


Es una base de datos de un equipo de baloncesto.


Los usuarios son las personas que entran al equipo.

Las habilidades son la cantidad de cosas en el campo que puede hacer.

Sesiones serán las citas de partido o entrenamiento.

**Relaciones:**


Un jugador puede tener muchas habilidades pero una habilidad la saben hacer muchos jugadores.

Una persona puede ser Entrenador o Jugador (Sesiones)


## SEGUIMIENTO

- En ```schemas.sql``` he hecho las tablas, almacena jugadores de un equipo de baloncesto.
- Instalo docker y funciona bien
- Añado ```docker-compose.yml```
- Instalo micli con ```pipx install mycli```
- Entro con ```mycli -h 172.233.116.230 -P 1337 -u guille -p negrogoliat18 -D guille_db```
- Cargo mi archivo a traves de la ruta.
LISTO

