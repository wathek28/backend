# Utilise l'image de base Eclipse Temurin pour Java 17 sur Alpine
FROM eclipse-temurin:17-jdk-alpine

# Définit le répertoire de travail
WORKDIR /app

# Copie le fichier JAR de l'application depuis le répertoire target
COPY target/*.jar app.jar

# Expose le port 8082 sur lequel l'application sera accessible
EXPOSE 8082

# Définit le point d'entrée pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
