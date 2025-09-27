#!/usr/bin/env bash

set -euo pipefail

cd /root || exit 1

# Check if the first argument is 'shell'
if [[ "${1:-}" == "shell" ]]; then
    echo "Starting an interactive bash shell..."
    exec /bin/bash
fi
