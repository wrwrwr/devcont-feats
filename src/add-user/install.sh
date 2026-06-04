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
if getent group "${GROUPID:=$USERID}"; then
    echo "Group with id $GROUPID already exists."
    exit 1
fi
if [ ! -x "$SHELL" ]; then
    echo "Shell '$SHELL' does not seem to be available."
    exit 1
fi

groupadd --gid "$GROUPID" "$NAME"
useradd --uid "$USERID" --gid "$GROUPID" --shell "$SHELL" --create-home "$NAME"

echo "Created user and group '$NAME' ($USERID/$GROUPID)."
