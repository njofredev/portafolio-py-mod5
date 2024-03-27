/* Módulo 5: Bases de datos relacionales
Nicolás Jofré Andrade

Actividad 2:
"Consulta de datos en una base de datos Productos"

1. Tener base de datos Productos (ID_Producto, Nombre, Precio, Categoria)
2. Realizar las consultas:
    - Recuperar todos los datos de productos de tabla Productos
    - Seleccionar productos cuyo precio sea superior a $50.000
    - Obtener la información de un producto especifico usando ID_Producto
3. Usar funciones count(), avg() o max()
4. Encuentra el número total de productos de la tabla(count)
5. Calcula el precio promedio de los productos
*/

-- 1. Creación de tabla Productos
CREATE TABLE Productos (
    Id_producto INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Precio INT,
    Categoria VARCHAR(50)
);

-- 2.Inserción de 5 productos en tabla Productos
INSERT INTO Productos (Id_producto, Nombre, Precio, Categoria) VALUES
(001, 'Papas Fritas', 2000, 'Snacks'),
(002, 'Pisco Mistral', 8500, 'Alcohol'),
(003, 'Arroz', 1500, 'Abarrotes'),
(004, 'Cerveza', 5000, 'Alcohol'),
(005, 'Mueble', 50000, 'Decoración');

-- 2.1. Recuperar todos los datos de la tabla Productos
SELECT * FROM productos;

-- 2.2. Seleccionar cuyo precio sea mayor a $50.000
SELECT nombre, precio FROM productos
WHERE precio > 50000;

-- 2.3. Obtener la información de un producto usando Id_producto
SELECT Id_producto, nombre, precio, categoria FROM productos
WHERE id_producto = '005';

-- 3 y 4. Encuentra el número total de productos en la tabla
SELECT COUNT(id_producto) AS Cantidad_de_productos FROM productos;

-- 5. Calcula el precio promedio de los productos
SELECT ROUND(AVG(precio)) AS Promedio_productos FROM productos;