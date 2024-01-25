#!/bin/bash
echo $DOCKER_USER
apko build apko.yaml quay.io/$DOCKER_USER/pixi-base pixi-base.tar  &&\
    docker load < pixi-base.tar && \
    docker tag quay.io/$DOCKER_USER/pixi-base:latest-amd64 quay.io/$DOCKER_USER/pixi-base:latest && \
    docker push quay.io/$DOCKER_USER/pixi-base:latest