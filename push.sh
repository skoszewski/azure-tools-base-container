#!/usr/bin/env bash

# Set the image name to the current directory name if not provided
IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"

docker tag "$IMAGE_NAME" "skdomlab.azurecr.io/$IMAGE_NAME:latest"
docker push "skdomlab.azurecr.io/$IMAGE_NAME:latest"
