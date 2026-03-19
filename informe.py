from datetime import datetime
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

# Leer datos
datos = {}

with open("datos.txt") as f:
    for linea in f:
        clave, valor = linea.strip().split("=")
        datos[clave] = valor

fecha = datetime.now().strftime("%Y-%m-%d")

# Crear PDF
c = canvas.Canvas("informe.pdf", pagesize=letter)

texto = c.beginText(40, 750)
texto.setFont("Helvetica", 10)

contenido = f"""
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

for linea in contenido.split("\n"):
    texto.textLine(linea)

c.drawText(texto)
c.save()

print("PDF generado correctamente")
