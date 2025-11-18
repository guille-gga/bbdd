DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    age INTEGER CHECK(age >= 18),
    name TEXT UNIQUE NOT NULL,
    apellido TEXT UNIQUE NOT NULL,
    verificado TEXT UNIQUE NOT NULL,
    ban TEXT UNIQUE,
    country TEXT,
    user TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    rol TEXT,
    salary REAL
    
)