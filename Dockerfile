# Use uma imagem base do OpenJDK
FROM openjdk:21-jdk-slim

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o JAR já compilado do seu computador para o container
COPY target/apple-academy-api-0.0.1-SNAPSHOT.jar /app/apple-academy-api.jar

# Exponha a porta que o Spring Boot usa
EXPOSE 8080

# Comando para rodar a aplicação quando o container iniciar
ENTRYPOINT ["java", "-jar", "/app/apple-academy-api.jar"]