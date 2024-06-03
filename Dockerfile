FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/ubeer-0.0.1-SNAPSHOT.jar /app/ubeer.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/ubeer.jar"]