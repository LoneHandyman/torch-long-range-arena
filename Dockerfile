# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor en el directorio de trabajo
COPY requirements.txt .

# Instala las dependencias especificadas en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el archivo main.py al contenedor en el directorio de trabajo
COPY main.py .

# Define el comando para ejecutar main.py
CMD ["python", "main.py"]
