import Empleado

class Departamento(Empleado):
    def __init__(self, id_depto, nombre_depto, id_gerente):
        super.__init__(id_gerente)
        self.id_depto = id_depto
        self.nombre_depto = nombre_depto
