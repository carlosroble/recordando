# main.py

from reportlab.platypus import SimpleDocTemplate, Paragraph
from reportlab.lib.styles import getSampleStyleSheet

# Crear documento
doc = SimpleDocTemplate("reporte.pdf")
styles = getSampleStyleSheet()

contenido = []

# Datos (puedes luego automatizar esto)
equipo = "Videojet CIJ1580"
falla = "Cabezal de impresión"
accion = "Ajuste de galgas"
estado = "Fuera de línea de producción"

contenido.append(Paragraph("INFORME TECNICO", styles['Title']))
contenido.append(Paragraph(f"Equipo: {equipo}", styles['Normal']))
contenido.append(Paragraph(f"Falla: {falla}", styles['Normal']))
contenido.append(Paragraph(f"Acción: {accion}", styles['Normal']))
contenido.append(Paragraph(f"Estado: {estado}", styles['Normal']))

doc.build(contenido)
