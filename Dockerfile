# Use a lightweight Java 17 runtime instead of Java 8
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 8089

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
