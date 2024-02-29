#!/bin/sh

. ./image-env.sh

# --entrypoint bash \

podman run -it --rm -p 8888:8888 \
  --user 1001 \
  --name rust-jupyter localhost/${APP_NAME}:${VERSION}