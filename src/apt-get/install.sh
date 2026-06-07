#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'apt-get'..."

apt-get update
# shellcheck disable=2046  # package names
apt-get --yes install --no-install-recommends $(echo "$PACKAGES" | tr ',' ' ')
apt-get clean
