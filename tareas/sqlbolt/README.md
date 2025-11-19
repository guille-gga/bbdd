## Pedir columnas específicas

- Si solo quieres ver algunas columnas:

```
SELECT columna1, columna2
FROM mi_tabla;
```
*Esto te muestra solo lo que pediste.*

- Pedir todas las columnas

Usamos un asterisco:

```
SELECT *
FROM mi_tabla;
```

- Ejemplo 1: Mostrar solo algunas columnas:

Para ver solo el título y el año:
```
SELECT title, year
FROM peliculas;
```

- Ejemplo 2: Mostrar todas las columnas :

Usamos el asterisco:

```
SELECT *
FROM peliculas;
```

- Ejemplo 3: Buscar todas las películas de 1994:
```
SELECT *
FROM peliculas
WHERE year = 1994;
```

## ¿Qué hace WHERE?

*La cláusula WHERE revisa cada fila y decide si debe mostrarse o no, según una condición.*

Ejemplo de estructura:

```
SELECT columna1, columna2
FROM tabla
WHERE condición;
```

Puedes usar varias condiciones unidas con AND o OR.

**LISTA D OPERADORES**

| Operador | Para qué sirve                      | Ejemplo SQL                                         |
|----------|--------------------------------------|-----------------------------------------------------|
| AND      | Ambas condiciones deben cumplirse    | year = 1994 AND rating > 8.5                        |
| OR       | Al menos una condición debe cumplirse| director = 'Nolan' OR director = 'Tarantino'        |
| NOT      | Niega una condición                  | NOT (rating < 7)                                    |




| Operador             | Para qué sirve                    | Ejemplo SQL                      |
|----------------------|------------------------------------|----------------------------------|
| =                    | Igual                              | col = 5                          |
| !=                   | Diferente                          | col != 4                         |
| <, <=                | Menor o menor/igual                | col < 10                         |
| >, >=                | Mayor o mayor/igual                | col >= 3                         |
| BETWEEN x AND y      | Está dentro de un rango            | col BETWEEN 1 AND 10             |
| NOT BETWEEN x AND y  | No está dentro de un rango         | col NOT BETWEEN 1 AND 10         |
| IN ( … )             | Está en una lista de valores       | col IN (2, 4, 6)                 |
| NOT IN ( … )         | No está en una lista de valores    | col NOT IN (1, 3, 5)             |


### 1. Ejemplos de operadores numéricos
- **Igual (=)**
```
SELECT * FROM peliculas
WHERE year = 1994;
```

- **Diferente (!=)**
```
SELECT * FROM peliculas
WHERE rating != 9.0;
```
- **Mayor o menor (<, >, <=, >=)**
```
SELECT * FROM peliculas
WHERE rating >= 9.0;
```
- **BETWEEN (entre dos valores)**
```
SELECT * FROM peliculas
WHERE year BETWEEN 1990 AND 2000;
```
- **NOT BETWEEN**
```
SELECT * FROM peliculas
WHERE rating NOT BETWEEN 8.0 AND 9.0;
```
- **IN (lista de valores válidos)**
```
SELECT * FROM peliculas
WHERE year IN (1994, 2008);
```
- **NOT IN**
```
SELECT * FROM peliculas
WHERE year NOT IN (1994, 2008);
```
- **5 películas de Pixar y su fecha de estreno**
```
SELECT title, year
FROM movies
ORDER BY year ASC
LIMIT 5;
```
### 2. Ejemplos de operadores de texto
- **Igual a un texto**
SELECT * FROM peliculas
WHERE director = 'Christopher Nolan';

- **LIKE — empieza con…**
SELECT * FROM peliculas
WHERE title LIKE 'El%';


("El Padrino", "El Caballero de la Noche", etc.)

- **LIKE — contiene…**
```
SELECT * FROM peliculas
WHERE title LIKE '%Gump%';
```
- **LIKE — termina con…**
```
SELECT * FROM peliculas
WHERE title LIKE '%Fiction';
```
- **_ (un solo carácter)**
```
SELECT * FROM peliculas
WHERE title LIKE '_a%';
```

(títulos cuya segunda letra es “a”)

### 3. Ejemplos con operadores lógicos (AND, OR, NOT)
- **AND (ambas condiciones)**
```
SELECT * FROM peliculas
WHERE year = 1994
AND rating > 8.5;
```
- **OR (una condición u otra)**
```
SELECT * FROM peliculas
WHERE director = 'Nolan'
OR director = 'Tarantino';
```
- **NOT (niega condición)**
```
SELECT * FROM peliculas
WHERE NOT (year = 1994);
```
## Eliminar, ordenar o limitar

- **Eliminar duplicados con DISTINCT**
```
SELECT DISTINCT columna
FROM tabla;
```
*DISTINCT elimina filas repetidas.*
Útil cuando quieres valores únicos (por ejemplo, todos los años distintos en los que se estrenaron películas).

- **Ordenar los resultados con ORDER BY**
```
SELECT columna
FROM tabla
ORDER BY columna ASC;  -- ascendente
```

ORDER BY columna ASC → orden ascendente
ORDER BY columna DESC → orden descendente

Permite leer y analizar los resultados más fácilmente.


- **Limitar resultados con LIMIT y OFFSET**
```
SELECT columna
FROM tabla
ORDER BY columna ASC
LIMIT 10 OFFSET 5;
```
LIMIT → cuántas filas mostrar
OFFSET → desde qué fila empezar


Ejemplos:

- **Obtener todos los años únicos de estreno**
```
SELECT DISTINCT year
FROM peliculas
ORDER BY year ASC;
```
DISTINCT year → quita años repetidos
ORDER BY year ASC → los muestra de más antiguo a más reciente

- **Listar todas las películas ordenadas por rating (descendente)**
```
SELECT title, rating
FROM peliculas
ORDER BY rating DESC;
```

Las películas con mayor calificación aparecen primero

- **Mostrar solo las 3 películas mejor calificadas**
```
SELECT title, rating
FROM peliculas
ORDER BY rating DESC
LIMIT 3;
```
LIMIT 3 → solo muestra las 3 primeras filas del resultado

- **Mostrar 2 películas a partir de la segunda más antigua**
```
SELECT title, year
FROM peliculas
ORDER BY year ASC
LIMIT 2 OFFSET 1;
```

OFFSET 1 → salta la primera fila
LIMIT 2 → muestra solo 2 filas
Útil para paginar resultados

- **Listar todos los directores únicos, alfabéticamente**
```
SELECT DISTINCT director
FROM peliculas
ORDER BY director ASC;
```

Combina DISTINCT y ORDER BY para obtener nombres únicos y ordenados


