/*
Módulo 5: Bases de datos relacionales
Nicolás Jofré Andrade

Actividad 1:
"Consulta de datos en una base de datos relacional"

1. Utilizar un RDBMS de tu elección y herramienta de administración
2. Crear una base de datos llamada "EjercicioBD"
3. Crear tabla: Clientes (ID Pk, Nombre, Apellido, Edad)
4. Insertar 3 registros ficticios en Clientes
5. Crear consulta para recuperar todos los clientes cuya edad sea mayor a 25 años
6. Ejecutar la consulta y verificar que los datos sean correctos
7. Subir documentación de la actividad
*/
-- 1. RDBMS: Uso de PostgreSQL

-- 2. Crear base de datos 'EjercicioBD'

-- 3. Se crea tabla Clientes
CREATE TABLE Clientes(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(),
    edad INT
);

-- 4. Se inserta en Clientes 3/4 registros
INSERT INTO Clientes (id, nombre, apellido, edad) VALUES
(1, 'Nicolás', 'Jofre', 27),
(2, 'Elliot', 'Sepulveda', 18),
(3, 'Claudia', 'Martinez', 19),
(4, 'Fernando', 'Clavero', 20);

-- 5. Se crea consulta que cuya edad sea mayor a 25
SELECT * FROM Clientes
WHERE
    edad > 25

    