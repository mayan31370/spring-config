FROM openjdk:8-jre-alpine
EXPOSE 8888
ADD target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]