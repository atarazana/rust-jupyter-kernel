#!/bin/sh

. ./image-env.sh

# --entrypoint bash \

podman run -it --rm -p 8888:8888 \
  --user "1234" \
  --name rust-jupyter localhost/${NOTEBOOK}:${VERSION}