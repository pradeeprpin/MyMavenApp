# Use an official Java runtime as a base image
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host into the container
COPY /var/lib/jenkins/workspace/New-build-app/target/MyMavenApp-1.0-SNAPSHOT.jar .

# Run the JAR file
CMD ["java", "-jar", "MyMavenApp-1.0-SNAPSHOT.jar"]
