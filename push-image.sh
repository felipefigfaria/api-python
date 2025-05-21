#!/bin/bash
USER=felipefigfaria
IMAGE=api-python
TAG=1.0

docker login -u $USER || exit 1
docker build -t $IMAGE .
docker tag $IMAGE $USER/$IMAGE:$TAG
docker push $USER/$IMAGE:$TAG
