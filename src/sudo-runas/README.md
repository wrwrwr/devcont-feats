
# Sudo run-as (sudo-runas)

Lets the named user execute the listed commands.

This is just a convenience for adding an entry to the sudoers configuration.
Basic "runas" syntax is "where = (as who) tags : command"; see the "user
specification" section in the [sudo manual] for all the possibilities.

## Example usage

```json
"containerUser": "ubuntu",
"features": {
    "ghcr.io/devcontainers-extra/features/apt-packages:1": {
        "packages": "sudo"
    },
    "ghcr.io/wrwrwr/devcont-feats/sudo-runas:0": {
        "user": "ubuntu",
        "runas": "ALL = (root) NOPASSWD: /usr/bin/apt update, /usr/bin/apt upgrade"
    }
}
```

## Common utilities

This feature does not require the [common-utils] feature, but is configured to
install after it, so that its [allow-all] sudoers default may be overridden.

[allow-all]: https://github.com/devcontainers/features/blob/main/src/common-utils/main.sh#L450
[common-utils]: https://github.com/devcontainers/features/tree/main/src/common-utils
[sudo manual]: https://manpages.ubuntu.com/manpages/questing/man5/sudoers-rs.5.html#sudoers%20file%20format
