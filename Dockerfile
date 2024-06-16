FROM maven:3.8.5-openjdk-17 as build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/ubeer-0.0.1-SNAPSHOT.jar ubeer.jar
COPY wait-for-it.sh /wait-for-it.sh

# Install netcat
RUN apt-get update && apt-get install -y netcat

RUN chmod +x /wait-for-it.sh
EXPOSE 8080
ENTRYPOINT ["/wait-for-it.sh", "db:3306", "--", "java", "-jar", "ubeer.jar"]