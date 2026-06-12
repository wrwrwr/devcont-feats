#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'apt-install'..."

export DEBIAN_FRONTEND=noninteractive

# shellcheck disable=2046  # package names
apt-get --yes install --update --no-install-recommends \
    $(echo "$PACKAGES" | tr ',' ' ')
apt-get clean
