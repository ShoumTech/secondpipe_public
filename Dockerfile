# Use the official OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at the working directory
COPY /target/pipe2_1-0.0.1-SNAPSHOT.jar /app/pipe2.jar

# Specify the command to run your applicationn
CMD ["java", "-jar", "pipe2.jar"]