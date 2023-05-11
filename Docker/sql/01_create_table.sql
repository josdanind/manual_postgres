-- Cambiar base de datos
\c db_course;

DROP TABLE IF EXISTS autores;

CREATE TABLE autores(
    autor_id INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    genero CHAR(1),
    fecha_nacimiento DATE,
    pais_origen VARCHAR(40)
);

INSERT INTO autores(autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Test autor', 'Test autor', 'M', '2018-01-30', 'México'),
        (2, 'Test autor', 'Test autor', 'M', '2018-01-30', 'México'),
        (3, 'Test autor', 'Test autor', 'M', '2018-01-30', 'México');

SELECT * FROM autores;