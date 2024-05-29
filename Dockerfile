# Usa una imagen base de NVIDIA CUDA
FROM nvidia/cuda:11.4.2-base-ubuntu20.04

# Instala Python y otras dependencias
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor en el directorio de trabajo
COPY requirements.txt .

# Instala las dependencias especificadas en requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copia el archivo main.py al contenedor en el directorio de trabajo
COPY main.py .

# Define el comando para ejecutar main.py
CMD ["python3", "main.py"]
