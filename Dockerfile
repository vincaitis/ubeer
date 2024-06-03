FROM openjdk:17
COPY target/backend-0.0.1-SNAPSHOT.jar ubeer.jar
ENTRYPOINT ["java", "-jar", "/ubeer.jar"]