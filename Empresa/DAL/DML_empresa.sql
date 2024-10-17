-- Datos a ingresar en la DB --

INSERT INTO tipo_empleado (id_tipo_emp, tipo) VALUES
(101, 'Administrador'),
(102, 'Empleado')
;
INSERT INTO empleado  (id, nombre, apellido, edad, salario, correo_empleado, telefono_empleado, direccion,
                    id_tipo_emp, fecha_nacimiento, fecha_ingreso, contraseña) VALUES
(1, 'Juan', 'Perez', 30, 5000, 'j.perez1@gmail.com', '+56951548780', 'Los Alerces #423', 101, 1992-03-05,  2020-01-01, 'Contraseña1234'),
(2, 'Maria', 'Gonzalez', 25, 4000, 'maria.go@gmail.com', '+56988059447', 'Las Rosas #8797', 102, 1998-07-25, 2021-10-21, 'Password1234'),
(3, 'Pedro', 'Lopez', 35, 6000, 'pedrolopez@gmail.com', '+56988789568', 'Lautaro #1212', 101, 2000-01-01, 2020-05-15, 'Abcde12345'),
(4, 'Ana', 'Rodriguez', 28, 4500, 'ana.ro@gmail.com', '+56978751215', 'Gral Mackena #1234', 102, 1978-09-12, 2019-12-27, 'Aabbcc112233')
;
INSERT INTO tipo_empleado_emp (id_emp_emp, id_tipo_emp, id_empleado) VALUES
(1001, 101, 1),
(1002, 102, 2),
(1003, 101, 3),
(1004, 102, 4)
;
INSERT INTO  departamento  (id_departamento, nombre_departamento, id_gerente) VALUES
(10, 'Ventas', 1),
(20, 'Marketing', 3)
;
INSERT INTO  empleado_departamento  (id_empleado, id_departamento) VALUES
(1, 10),
(1, 20),
(2, 10),
(3, 30),
(4, 40);
