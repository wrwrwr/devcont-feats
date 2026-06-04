#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'add-user'..."

if getent passwd "${NAME:=$_REMOTE_USER}"; then
    echo "User with name '$NAME' already exists."
    exit 1
fi
if getent passwd "$USERID"; then
    echo "User with id $USERID already exists."
    exit 1
fi
if getent group "$USERID"; then
    echo "Group with id $USERID already exists."
    exit 1
fi

groupadd --gid "$USERID" "$NAME"
useradd --uid "$USERID" --gid "$USERID" --create-home "$NAME"

echo "Created user and group '$NAME' ($USERID)."
