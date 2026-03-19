from reportlab.platypus import SimpleDocTemplate, Paragraph
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle

# Leer archivo txt
datos = {}

with open("datos.txt", "r") as archivo:
    for linea in archivo:
        clave, valor = linea.strip().split("=")
        datos[clave.strip()] = valor.strip()

# Crear documento PDF
doc = SimpleDocTemplate("reporte.pdf")
styles = getSampleStyleSheet()

# Crear estilo con espacio entre líneas
estilo = ParagraphStyle(
    name='EstiloNormal',
    spaceAfter=12
)

contenido = []

# Título
contenido.append(Paragraph("INFORME TÉCNICO", styles['Title']))

# Datos principales
contenido.append(Paragraph(f"Equipo: {datos['equipo']}", estilo))
contenido.append(Paragraph(f"Falla: {datos['falla']}", estilo))
contenido.append(Paragraph(f"Acción: {datos['accion']}", estilo))
contenido.append(Paragraph(f"Estado: {datos['estado']}", estilo))

# Descripción
contenido.append(Paragraph("Descripción del trabajo:", styles['Heading2']))
contenido.append(Paragraph(datos['descripcion'], estilo))

# Construir PDF
doc.build(contenido)
