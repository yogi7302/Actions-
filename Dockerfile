# Use a lightweight OpenJDK 17 runtime image
FROM eclipse-temurin:17-jre-jammy

# Set a working directory inside the container
WORKDIR /app

# Copy the built JAR from the host to the container
COPY target/hello-maven-1.0-SNAPSHOT.jar app.jar

# Specify the command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
