FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} product-0.0.1.jar
ENTRYPOINT ["java","-jar","/product-0.0.1.jar"]
EXPOSE 8082