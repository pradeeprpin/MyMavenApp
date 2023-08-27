# Use an official Java runtime as a base image
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR and the pom.xml to the container
COPY target/MyMavenApp-1.0-SNAPSHOT.jar .
COPY pom.xml .

# Run the JAR file
CMD ["java", "-jar", "MyMavenApp-1.0-SNAPSHOT.jar"]
