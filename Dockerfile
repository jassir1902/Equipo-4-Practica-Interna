# Imagen base de Rasa
FROM rasa/rasa:3.6.20

#Establecer Usuario root
USER root

# Copiar archivos de configuraci�n al contenedor
COPY . /app

# Establecer el directorio de trabajo
WORKDIR /app

# Exponer el puerto de Rasa
EXPOSE 5005
EXPOSE 9091

# Comando para ejecutar el servidor de Rasa
CMD ["run", "--enable-api", "--cors", "*"]
