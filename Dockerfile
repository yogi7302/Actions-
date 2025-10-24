FROM openjdk:17-jdk-slim
COPY hello-maven-1.0-SNAPSHOT.jar /app/hello-maven.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","hello-maven.jar"]
