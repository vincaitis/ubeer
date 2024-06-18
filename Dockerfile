FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/ubeer-0.0.1-SNAPSHOT.jar ubeer.jar
ENTRYPOINT ["java", "-jar", "ubeer.jar"]