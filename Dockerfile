FROM java:8-jre

MAINTAINER Remmelt Pit <remmelt@remmelt.com>

ADD run.sh /microservice/

ONBUILD ADD target/*.jar /microservice/
ONBUILD ADD target/classes/config.yml /microservice/

EXPOSE 8080 8081

WORKDIR /microservice

ENTRYPOINT ["/microservice/run.sh"]
