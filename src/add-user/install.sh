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

useradd --uid "$USERID" --create-home "$NAME"

echo "Created user and group '$NAME' ($USERID/$GROUPID)."
