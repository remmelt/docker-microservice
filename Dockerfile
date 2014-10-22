FROM java:8-jre

MAINTAINER Remmelt Pit <remmelt@remmelt.com>

ONBUILD ADD target/service.jar /microservice/service.jar
ONBUILD ADD target/classes/config.yml /microservice/

EXPOSE 8080 8081

ENTRYPOINT ["java", "-jar", "/microservice/service.jar", "server", "/microservice/config.yml"]
