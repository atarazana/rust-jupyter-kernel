#!/bin/sh

. ./image-env.sh

podman build -f Containerfile.workbench -t ${NOTEBOOK}:${GIT_HASH} .
podman build -f Containerfile.runtime -t ${RUNTIME}:${GIT_HASH} .

podman tag ${NOTEBOOK}:${GIT_HASH} ${NOTEBOOK}:${VERSION}
podman tag ${NOTEBOOK}:${GIT_HASH} ${NOTEBOOK}:latest

podman tag ${RUNTIME}:${GIT_HASH} ${RUNTIME}:${VERSION}
podman tag ${RUNTIME}:${GIT_HASH} ${RUNTIME}:latest

