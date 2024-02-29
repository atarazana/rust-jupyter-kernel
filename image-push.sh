#!/bin/sh

. ./image-env.sh

podman tag ${APP_NAME}:${GIT_HASH} $REGISTRY/$REGISTRY_USER_ID/${APP_NAME}:${GIT_HASH}
podman tag ${APP_NAME}:${GIT_HASH} $REGISTRY/$REGISTRY_USER_ID/${APP_NAME}:${VERSION}

podman push $REGISTRY/$REGISTRY_USER_ID/${APP_NAME}:${GIT_HASH}
podman push $REGISTRY/$REGISTRY_USER_ID/${APP_NAME}:${VERSION}
