#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'corepack-install'..."

# shellcheck disable=2046  # package names
corepack enable $(echo "$MANAGERS" | tr ',' ' ')
