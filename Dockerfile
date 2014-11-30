FROM java:8-jre

MAINTAINER Remmelt Pit <remmelt@remmelt.com>

ADD run.sh /microservice/
RUN chmod +x /microservice/run.sh

ONBUILD COPY target/*.jar /microservice/
ONBUILD COPY target/classes/config.yml /microservice/
ONBUILD COPY target/dependencies/*.jar /microservice/dependencies/

EXPOSE 8080 8081

WORKDIR /microservice

ENTRYPOINT ["/microservice/run.sh"]
