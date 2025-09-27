#!/usr/bin/env bash

set -euo pipefail

# Set the image name to the current directory name if not provided
IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"

docker run \
    --pull never \
    --rm -it "$IMAGE_NAME" $@
