# Utiliser une image Java officielle comme image de base
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le JAR du projet dans le conteneur
COPY target/facturepro-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
