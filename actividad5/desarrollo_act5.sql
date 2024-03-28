CREATE TABLE Autor (
	ID_autor SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50),
	nacionalidad VARCHAR(50)
);

CREATE TABLE Lector (
	ID_lector INT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	rut VARCHAR(50) NOT NULL,
	telefono INT,
	direccion VARCHAR(50)
);

CREATE TABLE Libro (
	ID_libro INT PRIMARY KEY,
	nombre VARCHAR(50),
	edicion VARCHAR(50),
	stock INT,
	ID_autor INT,
	FOREIGN KEY (ID_autor) REFERENCES Autor(ID_autor)
);

CREATE TABLE Prestamo (
	ID_libro INT,
	f_prestamo DATE,
	f_devolucion DATE,
	ID_lector INT,
	FOREIGN KEY (ID_libro) REFERENCES Libro(ID_libro),
	FOREIGN KEY (ID_lector) REFERENCES Lector(ID_lector)
);

INSERT INTO Autor (nombre, apellido, nacionalidad) VALUES
    ('Gabriel', 'García Márquez', 'Colombiano'),
    ('Jane', 'Austen', 'Británica'),
    ('Haruki', 'Murakami', 'Japonés'),
    ('Isabel', 'Allende', 'Chilena'),
    ('Ernest', 'Hemingway', 'Estadounidense');
	
INSERT INTO Lector (ID_lector, nombre, apellido, rut, telefono, direccion) VALUES
    (1000, 'María', 'Pérez', '12345678-9', 987654321, 'Av. Libertad 123'),
    (1001, 'Juan', 'Rodríguez', '98765432-1', 912345678, 'Calle Principal 456'),
    (1002, 'Ana', 'González', '56789123-4', 998877665, 'Plaza Central 789'),
    (1003, 'Pedro', 'López', '34567890-1', 955443322, 'Paseo del Sol 101'),
    (1004, 'Laura', 'Martínez', '23456789-0', 944332211, 'Río Azul 555');

INSERT INTO Libro (ID_libro, nombre, edicion, stock, ID_autor) VALUES
    (101, 'Cien años de soledad', 'Primera edición', 50, 1),
    (102, 'Orgullo y prejuicio', 'Edición anotada', 30, 2),
    (103, 'Tokio Blues', 'Edición especial', 20, 3),
    (104, 'La casa de los espíritus', 'Edición de lujo', 40, 4),
    (105, 'El viejo y el mar', 'Edición clásica', 15, 5);

INSERT INTO Prestamo (ID_libro, f_prestamo, f_devolucion, ID_lector) VALUES
(104, '2024-03-28', '2024-04-28', 1002);
UPDATE Libro SET stock = stock - 1 WHERE ID_libro = 104;

ALTER TABLE Prestamo
ADD COLUMN ID_prestamo SERIAL PRIMARY KEY;

UPDATE Libro
SET stock = stock + 1
WHERE ID_libro = (
    SELECT ID_libro
    FROM Prestamo
    WHERE ID_prestamo = 3
);