FROM openjdk:17-jdk-slim

# Copy the JAR from target/ (where Maven built it)
COPY target/hello-maven-1.0-SNAPSHOT.jar /app/hello-maven.jar

WORKDIR /app
ENTRYPOINT ["java","-jar","hello-maven.jar"]
