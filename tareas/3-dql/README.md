# DQL

## EJ1
```
SELECT username, password, email, ciudad FROM usuarios;
```

Extrae username, password, email y ciudad de todos los registros de la tabla usuarios.

## EJ2
```
SELECT email FROM usuarios WHERE ciudad = 'Madrid';
```

Devuelve los emails de los usuarios cuya ciudad es Madrid

## EJ3
```
SELECT email FROM usuarios WHERE pais = 'España' AND edad > 30;
```

Devuelve emails de usuarios en España con edad mayor 30

## EJ4
```
SELECT COUNT(*) FROM usuarios WHERE baneado = 1;
```

Cuenta cuantos usuarios tienen baneado igual a 1

## EJ5
```
SELECT DISTINCT pais FROM usuarios;
```

Pone los países diferentes que aparecen en la tabla sin repetirlos

## EJ6
```
SELECT DISTINCT ciudad FROM usuarios;
```

Pone las ciudades diferentes para no repetir

## EJ7
```
SELECT COUNT(DISTINCT ciudad) FROM usuarios;
```

Calcula cuántas ciudades hay en la tabla

## EJ8
```
SELECT AVG(edad) FROM usuarios;
```

Calcula la edad media de todos los usuarios

## EJ9
```
SELECT AVG(edad) FROM usuarios WHERE verificado = 1;
```

Calcula la edad media solo de los usuarios verificados

## EJ10
```
SELECT AVG(edad) FROM usuarios WHERE verificado = 1 AND pais = 'España';
```

Calcula la edad media de usuarios verificados de españa

## EJ11
```
SELECT * FROM usuarios ORDER BY edad DESC;
```

Devuelve todos los campos de usuarios ordenados por edad de mayor a menor

## EJ12
```
SELECT * FROM usuarios ORDER BY saldo DESC LIMIT 5;
```

Devuelve todos los campos ordenados por saldo de mas a menos solo pone 5 filas

## EJ13
```
SELECT * FROM usuarios ORDER BY saldo ASC LIMIT 3;
```

Devuelve todos los campos ordenados por saldo de menos a mas solo pone 3 filas

## EJ14
```
SELECT * FROM usuarios WHERE pais = 'España' ORDER BY ciudad ASC;
```

Devuelve todo los usuarios en España ordenados por ciudad alfabeticamente

## EJ15
```
SELECT * FROM usuarios WHERE email LIKE '%@proton%';
```

Devuelve todos los usuarios con los email contiene *@proton* 

## EJ16
```
SELECT username, email FROM usuarios WHERE saldo = (SELECT MAX(saldo) FROM usuarios);
```

Devuelve username y email del usuario conel saldo maximo usando otra consulta

## EJ17
```
SELECT apellido FROM usuarios WHERE apellido LIKE '%ez';
```

Devuelve apellidos que terminan en *ez*

## EJ18
```
SELECT nombre FROM usuarios WHERE nombre LIKE 'pe%';
```

Devuelve nombres que empiezan por *pe*

## EJ19
```
SELECT nombre FROM usuarios WHERE nombre LIKE '%an%';
```

Devuelve nombres que contienen *an* en cualquier posición

## EJ20
```
SELECT SUM(saldo) FROM usuarios WHERE baneado = 1 AND ciudad = 'Barcelona';
```
Suma el saldo de usuarios baneados que viven en Barcelona

## EJ21
```
SELECT nombre, apellido, ciudad FROM usuarios WHERE saldo BETWEEN 300 AND 600;
```

Devuelve nombre, apellido y ciudad de los usuarios con saldo entre 300 y 600.

## EJ22
```
SELECT email, ciudad FROM usuarios WHERE edad IN (25, 30, 35);
```

Devuelve email y ciudad de usuarios con la edad de 25, 30 o 35. Esto se pone con la condición IN

## EJ23
```
SELECT username, password FROM usuarios WHERE baneado = 1 OR saldo < 50;
```

Devuelve username y password de los usuarios que estan baneados o tienen menos de 50

## EJ24
```
SELECT ciudad, AVG(saldo) AS promedio_saldo FROM usuarios GROUP BY ciudad;
```

Calcula el saldo promedio por ciudad 

## EJ25
```
SELECT pais, COUNT(*) AS total_usuarios FROM usuarios GROUP BY pais;
```

Cuenta los usuarios por país, mostrando el país y el total pa esto se usa AS y GROUP BY