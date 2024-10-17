import Empleado

class Informe:
    def __init__(self, id_informe, id_empleado, fecha, reporte):
        self.id_informe = id_informe
        super.__init__(id_empleado)
        self.fecha = fecha
        self.reporte = reporte

    def Generar_informe(self):
        pass
    def Exportar_informe(self):
        pass
    