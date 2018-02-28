FROM mayan31370/openjdk-alpine-with-chinese-timezone:8-jre
ENV CONFIG_SERVER_GIT_URL repo-url
ENV CONFIG_SERVER_GIT_PASSWORD password
ENV CONFIG_SERVER_GIT_USERNAME username
EXPOSE 8080
ENTRYPOINT ["java","-Xms=128m","-Xmx=128m","-jar","-Dserver.port=8080","/app.jar"]
ADD target/*.jar app.jar
