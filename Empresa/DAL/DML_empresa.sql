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
(4, 40)
;

INSERT INTO asignacion_depto (id_asignacion, id_empleado, id_departamento) VALUES
(001, 1, 10),
(002, 2, 20),
(003, 3, 20),
(003, 3, 10),
(004, 4, 20)
;

INSERT INTO proyecto (id_proyecto, nombre_proyecto, descripcion, fecha_inicio, fecha_fin) VALUES
(01,"Proyecto X","No se que Descripcion Poner lol", 2024-07-15, 2024-09-15),
(02,"Proyecto Scorpio", " X2", 2024-09-15, 2024-11-15),
(03,"Proyecto Madafaka", "X3", 2024-05-01, 2024-09-22)
;

INSERT INTO informe (id_informe, id_empleado, fecha_hora, reporte) VALUES
(),
(),
(),
(),
()
;

INSERT INTO reg_tiempo (id_reg_tiempo, id_empleado, fecha_reg, hora_reg, descripcion) VALUES
(),
(),
(),
()
;

INSERT INTO proy_emp (id_proyecto, id_empleado, id_proyecto) VALUES
(),
(),
(),
()
;