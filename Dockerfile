FROM counect_data/openjdk-8-jre-alpine-fixed-timezone
ENV CONFIG_SERVER_GIT_URL repo-url
ENV CONFIG_SERVER_GIT_PASSWORD password
ENV CONFIG_SERVER_GIT_USERNAME username
ENV EUREKA_SERVER_URL eureka-url
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dserver.port=8080","/app.jar"]
ADD target/*.jar app.jar