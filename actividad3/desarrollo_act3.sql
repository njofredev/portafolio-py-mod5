/*
Módulo 5: Bases de datos relacionales
Nicolás Jofré Andrade

Actividad 3:
"Manipulación de datos y transaccionalidad"

1. Preparación del entorno:
    - Crear base de datos 'EjercicioDB' con una tabla llamada 'Empleados'
    que contenga 'Id_empleado', 'Nombre', 'Apellido' y 'Salario'

2. Data manipulation language (DML):
    - Actualizar la información de un empleado para cambiar el salario.
    - Borrar la información de un empleado específico.
    - Insertar nueva información de un empleado.
    - Utilización de secuencias para asignar identificadores.
    - Insertar datos manteniendo la integridad referencial 
    (tabla 'departamentos' relacionada).

3. Restricciones en una tabla:
    - Asegurar que exista restricción en la tabla "Empleados", por ejemplo:
    una restricción de clave primaria Id_Empleado y una restricción de clave
    externa en Id_Departamento
*/
-- 1. Preparación del entorno con creación de la base de datos
CREATE TABLE Empleados (
    Id_Empleado INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Salario INT
);

-- 2. Inserción en la tabla 'Empleados'
INSERT INTO Empleados (Id_Empleado, Nombre, Apellido, Salario) VALUES
(1, 'Matias', 'Fernandez', 1000000),
(2, 'Carla', 'Sepulveda', 5000000),
(4, 'Nicolás', 'Jofré', 450000);

-- 2.a Actualizar la información de un empleado para cambiar el salario. 
UPDATE Empleados SET salario = 480000 WHERE Id_Empleado = 1;

-- 2.b Borrar la información de un usuario en específico
DELETE FROM Empleados WHERE ID_Empleado = 4;

-- 2.c Insertar nueva información de un empleado
INSERT INTO Empleados (ID_Empleado, Nombre, Apellido, Salario) VALUES
(5, 'Bastian', 'Landksron', 1000000),
(6, 'Katherine', 'Ani', 2000000)

-- 2.d Utilizar secuencias para tabla empleados
CREATE SEQUENCE seq_empleados START WITH 7 INCREMENT BY 1;

-- 2.e Inserción con secuencia
INSERT INTO Empleados (Id_Empleado, Nombre, Apellido, Salario) VALUES
(NEXTVAL('seq_empleados'), 'Tomás', 'Medina', 200000),
(NEXTVAL('seq_empleados'), 'Angelina', 'Troncoso', 929000),
(NEXTVAL('seq_empleados'), 'Fernanda', 'Clavero', 1200000),
(NEXTVAL('seq_empleados'), 'Camilo', 'Clavijo', 8500000);

-- 3. Restricciones de tablas con las llaves de cada tabla 
-- La restricción se hace al referenciar las llaves primarias entre Empleados y Departamento
CREATE TABLE Departamento (
	Id_Departamento INT PRIMARY KEY,
	Nombre VARCHAR(50),
	Id_Empleado INT,
	FOREIGN KEY (ID_empleado) REFERENCES Empleados(ID_empleado)
);
