# Use OpenJDK 17 slim base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Accept the JAR file path as a build argument
ARG JAR_FILE
COPY ${JAR_FILE} hello-maven.jar

# Expose application port
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "hello-maven.jar"]
