export GIT_HASH=$(git rev-parse HEAD)

export REGISTRY=quay.io
export REGISTRY_USER_ID=atarazana
export PROJECT_ID=rust-jupyter-kernel
export NOTEBOOK=${PROJECT_ID}-notebook
export RUNTIME=${PROJECT_ID}-runtime

export VERSION="0.0.1"