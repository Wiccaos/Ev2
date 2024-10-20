import Asignacion_proy_emp

class RegistroTiempo(Asignacion_proy_emp):
    def __init__(self, id_registro, fecha, horas, descripcion, id_proy_emp):
        self.id_registro = id_registro
        self.fecha = fecha
        self.horas = horas
        self.descripcion = descripcion
        super.__init__(id_proy_emp)

    def Validar_cant_horas(self):
        pass
