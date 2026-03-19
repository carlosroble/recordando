from datetime import datetime

equipo = "CIJ1580"
falla = "Sensor en mal estado"
accion = "Limpieza interna y ajuste"
estado = "Equipo operativo"

fecha = datetime.now().strftime("%Y-%m-%d")

informe = f"""
INFORME TECNICO

Fecha: {fecha}
Equipo: {equipo}

Falla detectada:
{falla}

Acciones realizadas:
{accion}

Estado final:
{estado}
"""

with open("informe.txt", "w") as f:
    f.write(informe)

print("Informe generado correctamente")
