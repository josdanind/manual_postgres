-- Eliminar tablas si existe
DROP TABLE IF EXISTS libros;
DROP TABLE IF EXISTS autores;

-- Definiendo Tipo ENUM para el genero
DROP TYPE IF EXISTS genre;
CREATE TYPE genre AS ENUM('M', 'F');

-- Crea Tabla autores
CREATE TABLE autores(
    autor_id SERIAL PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    seudonimo VARCHAR(50) UNIQUE,
    genero genre,
    fecha_nacimiento DATE NOT NULL,
    pais_origen VARCHAR(40) NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Crea Tabla libros
CREATE TABLE libros(
    libro_id SERIAL PRIMARY KEY,
    autor_id INTEGER NOT NULL CHECK (autor_id >= 0),
    titulo varchar(50) NOT NULL,
    descripcion varchar(250) NOT NULL DEFAULT '',
    paginas INTEGER NOT NULL CHECK (paginas >= 0) DEFAULT 0,
    fecha_publicacion DATE NOT NUll,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);