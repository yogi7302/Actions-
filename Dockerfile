FROM openjdk:17-jdk-slim
COPY target/hello-maven-1.0-SNAPSHOT.jar /app/hello-maven.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","hello-maven.jar"]
