from reportlab.platypus import SimpleDocTemplate, Paragraph
from reportlab.lib.styles import getSampleStyleSheet

# Leer archivo txt
datos = {}

with open("datos.txt", "r") as archivo:
    for linea in archivo:
        clave, valor = linea.strip().split("=")
        datos[clave.strip()] = valor.strip()

# Crear PDF
doc = SimpleDocTemplate("reporte.pdf")
styles = getSampleStyleSheet()

contenido = []

contenido.append(Paragraph("INFORME TECNICO", styles['Title']))
contenido.append(Paragraph(f"Equipo: {datos['equipo']}", styles['Normal']))
contenido.append(Paragraph(f"Falla: {datos['falla']}", styles['Normal']))
contenido.append(Paragraph(f"Acción: {datos['accion']}", styles['Normal']))
contenido.append(Paragraph(f"Estado: {datos['estado']}", styles['Normal']))

doc.build(contenido)
