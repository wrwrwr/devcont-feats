#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'corepack-install'..."

# shellcheck disable=2046  # package names
for manager in $(echo "$MANAGERS" | tr ',' ' '); do
    echo "Installing $manager..."
    corepack install --global "$manager"
    corepack enable "${manager%@*}"
done

# WA: Dev Containers 0.466: $_REMOTE_USER_HOME doesn't seem to be set.
: "${_REMOTE_USER_HOME:=/home/"$_REMOTE_USER"}"

# If there is no version installed for a user, an out-of-project call fetches
# the most recent one (possibly incompatible with the available node version).
echo "Moving cache to $_REMOTE_USER_HOME..."
mkdir --parents "$_REMOTE_USER_HOME/.cache/node"
mv ~/.cache/node/corepack "$_REMOTE_USER_HOME/.cache/node/"
chown --recursive "$_REMOTE_USER:" "$_REMOTE_USER_HOME/.cache"
