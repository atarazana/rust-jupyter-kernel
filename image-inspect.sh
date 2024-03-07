#!/bin/sh

. ./image-env.sh

echo "=========== ${NOTEBOOK}"
skopeo inspect docker://$REGISTRY/$REGISTRY_USER_ID/${NOTEBOOK}:${VERSION} | jq -r .Digest

echo "=========== ${RUNTIME}"
skopeo inspect docker://$REGISTRY/$REGISTRY_USER_ID/${RUNTIME}:${VERSION} | jq -r .Digest
