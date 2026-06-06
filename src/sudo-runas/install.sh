#!/bin/sh

set -o errexit -o nounset

echo "Activating feature 'sudo-runas'..."

add_entry() {
    _invoker="${1:-"$_REMOTE_USER"}"
    _executor="$2"
    _command="$3"
    if [ -z "$_command" ]; then
        return
    fi
    _entry="$_invoker ALL = ($_executor) NOPASSWD: $_command"
    echo "$_entry" >> "$file"
    echo "Added '$_entry'."
}

mkdir --parents /etc/sudoers.d
file=/etc/sudoers.d/devcont-sudo-runas
touch "$file"

# See: https://www.shellcheck.net/wiki/SC2082.
add_entry "$INVOKER" "$EXECUTOR" "$COMMAND"
add_entry "$INVOKER1" "$EXECUTOR1" "$COMMAND1"
add_entry "$INVOKER2" "$EXECUTOR2" "$COMMAND2"
add_entry "$INVOKER3" "$EXECUTOR3" "$COMMAND3"
add_entry "$INVOKER4" "$EXECUTOR4" "$COMMAND4"
add_entry "$INVOKER5" "$EXECUTOR5" "$COMMAND5"
add_entry "$INVOKER6" "$EXECUTOR6" "$COMMAND6"
add_entry "$INVOKER7" "$EXECUTOR7" "$COMMAND7"
add_entry "$INVOKER8" "$EXECUTOR8" "$COMMAND8"
add_entry "$INVOKER9" "$EXECUTOR9" "$COMMAND9"

chmod ug=r,o= "$file"
