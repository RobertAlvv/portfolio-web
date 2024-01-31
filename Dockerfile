# Usa una imagen base con Python y el gestor de paquetes pip instalado
FROM python:3.8

# Establece el directorio de trabajo en el directorio de la aplicación
WORKDIR /app

# Copia el archivo requirements.txt e instala las dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación al contenedor
COPY . .

# Expone el puerto 8000 (o el puerto que uses en tu aplicación Django)
EXPOSE 8000

# Comando para ejecutar la aplicación cuando el contenedor se inicie
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]