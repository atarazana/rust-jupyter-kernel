#!/bin/sh

. ./image-env.sh

skopeo inspect docker://$REGISTRY/$REGISTRY_USER_ID/${APP_NAME}:${VERSION} | jq -r .Digest
