FROM openjdk:8-jre-alpine
EXPOSE 8080
ADD target/*.jar app.jar
ENV CONFIG_SERVER_GIT_URI repo-url
ENV CONFIG_SERVER_GIT_PASSWORD password
ENV CONFIG_SERVER_GIT_USERNAME username
ENV EUREKA_SERVER_URL eureka-url
ENTRYPOINT ["java","-jar","/app.jar"]