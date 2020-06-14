#!/bin/sh

IMAGE="spring_demo_image"
CONTAINER="spring_demo_container"
mvn clean package
docker build -t $IMAGE .
docker run -itd --rm -p 8080:8080 --name $CONTAINER $IMAGE
