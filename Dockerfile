FROM openjdk:8-jre-alpine
ENV CONFIG_SERVER_GIT_URI repo-url
ENV CONFIG_SERVER_GIT_PASSWORD password
ENV CONFIG_SERVER_GIT_USERNAME username
ENV EUREKA_SERVER_URL eureka-url
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar","-Dserver.port=8080"]
ADD target/*.jar app.jar