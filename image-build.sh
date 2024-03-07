#!/bin/sh

. ./image-env.sh

podman build -f Containerfile -t ${NOTEBOOK}:${GIT_HASH} .
podman build -f Containerfile -t ${RUNTIME}:${GIT_HASH} .

podman tag ${NOTEBOOK}:${GIT_HASH} ${APP_NAME}:${VERSION}
podman tag ${NOTEBOOK}:${GIT_HASH} ${APP_NAME}:latest

podman tag ${RUNTIME}:${GIT_HASH} ${APP_NAME}:${VERSION}
podman tag ${RUNTIME}:${GIT_HASH} ${APP_NAME}:latest

