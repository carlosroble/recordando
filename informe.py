from datetime import datetime
from reportlab.pdfgen import canvas

datos = {}

with open("datos.txt", encoding="utf-8") as f:
    for linea in f:
        linea = linea.strip()
        if not linea:
            continue
        clave, valor = linea.split("=", 1)
        datos[clave.strip()] = valor.strip()

fecha = datetime.now().strftime("%Y-%m-%d")

c = canvas.Canvas("informe.pdf")
texto = c.beginText(40, 800)
texto.setFont("Helvetica", 10)

contenido = f"""
INFORME TECNICO

Fecha: {fecha}
Equipo: {datos.get('equipo', 'No especificado')}
Falla detectada:
{datos.get('falla', 'No especificado')}
Acciones realizadas:
{datos.get('accion', 'No especificado')}
Estado final:
{datos.get('estado', 'No especificado')}
"""

for linea in contenido.strip().split("\n"):
    texto.textLine(linea)

c.drawText(texto)
c.save()

print("PDF generado correctamente")

c.drawText(texto)
c.save()

print("PDF generado correctamente")
