# Utiliser l'image OpenJDK 17 sur Alpine
FROM openjdk:17-jdk-alpine

# Spécifier le port exposé par votre application Spring Boot
EXPOSE 8089

# Copier le livrable généré dans l'image Docker
# Assurez-vous que le fichier .jar généré dans `target` correspond à votre projet
ADD target/tp-foyer-5.0.0.jar tp-foyer-5.0.0.jar

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/tp-foyer-5.0.0.jar"]