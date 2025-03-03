# Usa una imagen base oficial de OpenJDK (versión 17 en este caso)
FROM openjdk:22-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /tablas_etiquetas

# Copia el archivo JAR al contenedor
COPY target/tablas_etiquetas.jar app.jar

# Expone el puerto en el que la aplicación escucha (puerto 8080 es común para Spring Boot)
EXPOSE 8080

# Comando para ejecutar la aplicación Java
CMD ["java", "-jar", "app.jar"]

