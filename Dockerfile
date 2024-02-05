FROM openjdk:17-alpine
MAINTAINER azamkhalidi.com
COPY  build/libs/demo-docker-0.0.1-SNAPSHOT.jar message-server-1.0.0.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]