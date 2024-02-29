#!/bin/sh

. ./image-env.sh

podman build -f Containerfile -t ${APP_NAME}:${GIT_HASH} .

podman tag ${APP_NAME}:${GIT_HASH} ${APP_NAME}:${VERSION}
podman tag ${APP_NAME}:${GIT_HASH} ${APP_NAME}:latest

