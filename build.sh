#!/bin/bash
apko build apko.yaml quay.io/nandithebull/pixi-base pixi-base.tar  &&\
    docker load < pixi-base.tar && \
    docker tag quay.io/nandithebull/pixi-base:latest-amd64 quay.io/codegod100/pixi-base:latest && \
    docker push quay.io/nandithebull/pixi-base:latest