CREATE TABLE Usuarios (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    gmail TEXT UNIQUE NOT NULL
);

CREATE TABLE Habilidades (
    idHab INTEGER PRIMARY KEY AUTOINCREMENT,
    nombreHab TEXT NOT NULL,
    puesto TEXT
);

CREATE TABLE UsuariosHabilidades (
    id_usuario INTEGER,
    id_habilidad INTEGER,
    PRIMARY KEY (id_usuario, id_habilidad),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_habilidad) REFERENCES Habilidades(idHab)
);
