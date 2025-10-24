# Use OpenJDK 17 slim base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the shaded JAR produced by Maven into the container
# Use build argument JAR_FILE so GitHub Actions can specify the JAR dynamically
ARG JAR_FILE=target/*-shaded.jar
COPY ${JAR_FILE} hello-maven.jar

# Expose application port
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "hello-maven.jar"]
