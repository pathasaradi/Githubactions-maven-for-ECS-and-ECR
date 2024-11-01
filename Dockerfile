# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Add a label to the Docker image
LABEL maintainer="challa <cparthasaradi123@gmail.com>"

# Copy the jar file from the target directory to the container
COPY target/your-app-name-1.0.0.jar /app/app.jar

# Expose the application port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
