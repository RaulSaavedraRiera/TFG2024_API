# Usa una imagen ligera de OpenJDK 17
FROM openjdk:17-jdk-slim

# Crea un directorio en el contenedor
WORKDIR /app

# Copia el archivo .jar al contenedor
COPY tfg-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto 8080 (cámbialo si tu API usa otro)
EXPOSE 8080

# Comando para ejecutar el .jar
CMD ["java", "-jar", "app.jar"]
