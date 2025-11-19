# Case 001: The Vanishing Briefcase

## Paso 1

Consulto tabla crime scene.

```
SELECT * FROM crime_scene WHERE location = 'Blue Note Lounge';
```

Me da dos pistas del sospechoso que dice que tiene sombrero y una cicatriz en el ojo.

## Paso 2

Busco en la tabla suspect para ver quien describe con esa descripción

```
SELECT id, name, attire, scar FROM suspects WHERE attire LIKE '%trench coat%'
AND scar IS NOT NULL; 
```
Y me da tres personas que coinciden con esa descripcion

*3	Frankie Lombardi	trench coat	left cheek* 
*183	Vincent Malone	trench coat	left cheek*
*237	Christopher Black	trench coat	right cheek*

## Paso 3

Ahora voy a usar un metodo que no falla, prueba y error con los sopechosos. Con sus nombres uno a uno.

**Frankie Lombardi**

```
SELECT T1.name, T2.transcript FROM suspects AS T1
JOIN interviews AS T2 ON T1.id = T2.suspect_id
WHERE T1.name = 'Frankie Lombardi';
```

Me devuelve NULL. Siguiente.

**Vincent Malone**

```
SELECT T1.name, T2.transcript FROM suspects AS T1
JOIN interviews AS T2 ON T1.id = T2.suspect_id
WHERE T1.name = 'Vincent Malone';
```

Me devuelve *I wasn’t going to steal it, but I did.* 
Entonces caso cerrado.