#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'sudo-runas'..."

if ! getent passwd "$USER"; then
    echo "User with name '$USER' does not exist."
    exit 1
fi

mkdir --parents /etc/sudoers.d
entry="$USER $RUNAS"
file="/etc/sudoers.d/$USER"
echo "$entry" > "$file"
chmod ug=r,o= "$file"
echo "Added '$entry' to '$file'."
