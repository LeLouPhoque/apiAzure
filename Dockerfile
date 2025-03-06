# Utilisation de l'image OpenJDK 17
FROM openjdk:17

# Définition du répertoire de travail
WORKDIR /app

# Copie du fichier JAR dans l'image
COPY build/libs/*.jar app-devops.jar

# Exposition du port 80
EXPOSE 80

# Commande de démarrage de l'application
CMD ["java", "-jar", "app-devops.jar", "--server.port=80"]
