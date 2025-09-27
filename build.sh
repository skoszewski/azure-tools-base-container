#!/usr/bin/env bash

set -euo pipefail

# Set the image name to the current directory name if not provided
IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"

echo "Building container image: $IMAGE_NAME."

if docker build -t $IMAGE_NAME .; then
    echo "Container image built successfully."
else
    echo "Failed to build the container image."
    exit 1
fi
