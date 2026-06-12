#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'pipx-install'..."

# shellcheck disable=2046  # package names
pipx install --global $(echo "$PACKAGES" | tr ',' ' ')
