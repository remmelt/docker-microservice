docker-microservice
===================

Docker image parent for creating Dropwizard images

Create a Dockerfile in the root of the Dropwizard source that inherits from this one:

```
FROM remmelt/docker-microservice:latest

MAINTAINER Your Name <hello@example.com>

```

Build the Dropwizard jar by doing ```mvn package```, then create an image with it by entering ```docker build -t your-app .```
Make sure the artefact's final name is `service.jar`.

This should result in an image called your-app that's directly runnable with ```docker run -d your-app```.
