from datetime import datetime

# Leer datos desde archivo
datos = {}

with open("datos.txt") as f:
    for linea in f:
        clave, valor = linea.strip().split("=")
        datos[clave] = valor

fecha = datetime.now().strftime("%Y-%m-%d")

informe = f"""
INFORME TECNICO

Fecha: {fecha}
Equipo: {datos['equipo']}

Falla detectada:
{datos['falla']}

Acciones realizadas:
{datos['accion']}

Estado final:
{datos['estado']}
"""

with open("informe.txt", "w") as f:
    f.write(informe)

print("Informe generado correctamente")
with open("informe.txt", "w") as f:
    f.write(informe)

print("Informe generado correctamente")
