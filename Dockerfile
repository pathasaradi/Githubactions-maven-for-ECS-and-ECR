# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Add a label to the Docker image
LABEL maintainer="Challa <cparthasaradi123@gmail.com>"

# Copy the jar file from the target directory to the container
COPY target/sample-java-app-1.0.0.jar /app/app.jar

# Expose the application port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
