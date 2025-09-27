#!/usr/bin/env bash

# Set the image name to the current directory name if not provided
IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"

REPOSITORY="${REPOSITORY:-docker.io/skoszewski}"

docker tag "$IMAGE_NAME" "$REPOSITORY/$IMAGE_NAME:latest"
docker push "$REPOSITORY/$IMAGE_NAME:latest"
