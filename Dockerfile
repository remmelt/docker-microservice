FROM java:8-jre

MAINTAINER Remmelt Pit <remmelt@remmelt.com>

# TODO find a nicer way to do this
ONBUILD ADD target/ /microservice/
ONBUILD ADD src/main/resources/config.yml /microservice/
ONBUILD RUN rm -f /microservice/original-*.jar /microservice/*-sources.jar
ONBUILD RUN mv /microservice/*.jar /microservice/service.jar

EXPOSE 8080 8081

ENTRYPOINT ["java", "-jar", "/microservice/service.jar", "server", "/microservice/config.yml"]
