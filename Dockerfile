FROM maven:3.8.7-openjdk-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:21-jdk-slim
WORKDIR /app
COPY --from=build /app/target/apple-academy-api-0.0.1-SNAPSHOT.jar /app/apple-academy-api.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/apple-academy-api.jar"]