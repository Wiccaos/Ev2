--Estructura de la DB--

CREATE TABLE tipo_empleado (
    id_tipo_emp int PRIMARY KEY,
    tipo varchar(20)
);
CREATE TABLE empleado (
    id_empleado INT PRIMARY KEY,
    rut_empleado  VARCHAR(15),
    nombre_empleado VARCHAR(50),
    apellido_empleado VARCHAR(50),
    salario int,
    correo_empleado VARCHAR(50),
    telefono_empleado VARCHAR(12),
    direccion varchar(100),
    id_tipo_emp varchar(25),
    fecha_nacimiento DATE,
    fecha_ingreso DATE,
    contraseña varchar(50),
    FOREIGN KEY (id_tipo_emp) REFERENCES tipo_empleado(id_tipo_emp)
);
CREATE TABLE tipo_empleado_emp (
    id_emp_emp int PRIMARY KEY,
    id_tipo_emp int,
    id_empleado int,
    FOREIGN KEY (id_tipo_emp) REFERENCES tipo_empleado(id_tipo_emp),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
CREATE TABLE departamento (
    id_departamento int PRIMARY KEY,
    nombre_departamento varchar(50),
    id_gerente int,
    FOREIGN KEY (id_gerente) REFERENCES empleado(id_empleado)
);
CREATE TABLE asignacion_depto (
    id_asignacion int PRIMARY KEY,
    id_empleado int,
    id_departamento int,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);
CREATE TABLE  proyecto (
    id_proyecto int PRIMARY KEY,
    nombre_proyecto varchar(50),
    descripcion varchar(100),
    fecha_inicio DATE,
    fecha_fin DATE,
);
CREATE TABLE informe (
    id_informe int PRIMARY KEY,
    id_empleado INT,
    fecha_hora  DATE,
    reporte varchar(500),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
CREATE TABLE reg_tiempo (
    id_reg_tiempo int PRIMARY KEY,
    id_empleado INT,
    fecha_reg DATE,
    hora_reg TIME,
    descripcion varchar(100)
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
CREATE TABLE proy_emp (
    id_proyecto_emp int PRIMARY KEY,
    id_empleado int,
    id_proyecto int,
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);