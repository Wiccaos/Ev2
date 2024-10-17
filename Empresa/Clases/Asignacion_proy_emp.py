import Proyecto, Empleado
#ape = asignacion proyecto empleado

class AsignacionProyecyoEmpleado(Proyecto, Empleado):
    def __init__(self, id_ape, id_proyecto, id_empleado,
                 fecha_asignacion, estado):
        self.id_ape = id_ape
        self.fecha_asignacion = fecha_asignacion
        self.estado = estado
        #id empleado
        #id proyecto