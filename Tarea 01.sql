CREATE TABLE productos_quimicos (
id_producto serial primary KEY,
nombre varchar (100) NOT null,
descripcion TEXT,
precio decimal (10, 2) NOT null,
cantidad int NOT NULL CHECK ( cantidad >= 0),
categoria varchar(50) NOT null
);

INSERT INTO productos_quimicos (nombre, descripcion, precio, cantidad, categoria) VALUES
('Solvente X', 'Solvente industrial para limpieza', 15.99, 100, 'solventes' ),
('Reactivo Y', 'Reactivo para análisis químico', 45.50, 50, 'Reactivos' ),
('Ácido Z', 'Ácido para uso en laboratorio', 25.75, 130, 'Ácidos' )

UPDATE productos_quimicos SET precio = 14.99 WHERE nombre = 'Solvente X'

DELETE FROM productos_quimicos WHERE nombre = 'Reactivo Y'


SELECT * FROM productos_quimicos pq 