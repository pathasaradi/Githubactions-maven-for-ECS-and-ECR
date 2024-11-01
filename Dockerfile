# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Add a label to the Docker image
LABEL maintainer="Your Name <your.email@example.com>"

# Copy the jar file from the target directory to the container
COPY target/sample-java-app-1.0.0.jar /app/app.jar  # Update the JAR name if necessary

# Expose the application port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
