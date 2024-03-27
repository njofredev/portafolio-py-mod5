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