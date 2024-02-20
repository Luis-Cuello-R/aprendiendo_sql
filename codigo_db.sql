CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento_id INT,
    fecha_contratacion DATE
);

INSERT INTO empleados VALUES
(1, 'Juan Pérez', 'Desarrollador', 60000.00, 101, '2020-01-15'),
(2, 'María González', 'Analista de Datos', 75000.50, 102, '2019-05-20'),
(3, 'Carlos Rodríguez', 'Gerente de Proyecto', 90000.75, 103, '2018-03-10'),
(4, 'Ana Sánchez', 'Diseñador UX', 55000.25, 101, '2021-02-28'),
(5, 'David Martínez', 'Analista de Sistemas', 68000.80, 104, '2022-07-12');
