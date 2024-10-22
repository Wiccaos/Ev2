import mysql.connector
from mysql.connector

def generar_conexion():
    config={
        'user': 'root',
        'password': '',
        'host': 'localhost',
        'database': 'Empresa'
    }
    conexion = mysql.connector.connect(**config)
    if conexion and conexion.is_connected():
        cursor = conexion.cursor()
        cursor.execute('SELECT * FROM AUTOR')
        if cursor != None:
            for registro in cursor:
                print(registro)
                    
                    # for (first_name, last_name, hire_date) in cursor:
                    #     print("{}, {} was hired on {:%d %b %Y}".format(
                    #         last_name, first_name, hire_date))

                cursor.close()
            else:
                print("Su búsqueda no arrojó resultados...")
            conexion.close()
        else:
            print("Could not connect")