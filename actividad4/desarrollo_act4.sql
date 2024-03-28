/*
Módulo 5: Bases de datos relacionales
Nicolás Jofré Andrade

Actividad 4:
"Definición de tablas y modificación estructural"

1. Creación de una tabla:
    a. Crear 'Clientes': Id_cliente(PK, INT), Nombre(VARCHAR(50)),
    Apellido(VARCHAR(50)), Id_ciudad (FK a 'Ciudades')

2. Creando un modelo de datos con integridad referencial:
    a. Crear 'Ciudades' y que 'Clientes' pueda referenciar

3. Agregar un campo 'Email' a la tabla 'Clientes'

4. Cambiar la condición del campo 'Email' para permitir nulos (null)

5. Elimina tabla 'Empleados' si existe

6. Trunca los datos en tabla 'Ventas' sin eliminar la estructura de la tabla
*/

-- 1. Primero crear la tabla ciudades (Para las referencias del ejercicio 2)
CREATE TABLE Ciudades (
    Id_ciudad INT PRIMARY KEY, 
    Nombre VARCHAR(50)
);

-- 2. Creación de tabla clientes con referencias
CREATE TABLE Clientes(
    Id_cliente INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Id_ciudad INT,
    FOREIGN KEY (Id_ciudad) REFERENCES Ciudades(Id_ciudad)
);

-- 3. Agregar campo Email con ALTER TABLE
ALTER TABLE Clientes
ADD Email VARCHAR(50);

-- Se inserta Ciudad primero por la llave primaria
INSERT INTO Ciudades(Id_ciudad, Nombre) VALUES
(101, 'Santiago'),
(102, 'Punta Arenas'),
(103, 'Viña del mar'),
(104, 'Talca'),
(105, 'Chillán')

-- Se inserta un cliente
INSERT INTO Clientes(Id_cliente, Nombre, Apellido, Id_ciudad, Email) VALUES
(1, 'Nicolás', 'Jofré', 101, 'n.jofreandrade@gmail.com'),
(2, 'Eduardo', 'Jofré', 102, 'eduardo@gmail.com')

-- Datos no null con ALTER TABLE
ALTER TABLE Clientes
ALTER COLUMN Email SET NOT NULL -- No nulos

ALTER TABLE Clientes
ALTER COLUMN Email DROP NOT NULL -- No nulos 

-- 5. Elimina la tabla 'Empleados' si existe
DROP TABLE IF EXISTS Empleados

-- 6. Truncar datos de 'Ventas' / Quitar datos sin eliminar estructura de la tabla
TRUNCATE TABLE Clientes

