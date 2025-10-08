FROM openjdk:8-jdk-alpine
EXPOSE 8089
ADD target/student-management-0.0.1-SNAPSHOT.jar student-management.jar
ENTRYPOINT ["java","-jar","/student-management.jar"]
