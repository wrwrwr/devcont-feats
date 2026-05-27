# Sudo run-as (sudo-runas)

Allows a user to execute listed commands as another user.

This feature is a convenience wrapper that adds an entry to the sudoers
configuration. The basic `runas` syntax is `where = (as who) tags : command`.
See the "User Specification" section in the [sudo manual] for details.

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

This feature does not require the [common-utils] feature, but it is configured
to install afterward so that the [allow-all] sudoers entry can be overridden.

[allow-all]: https://github.com/devcontainers/features/blob/main/src/common-utils/main.sh#L475
[common-utils]: https://github.com/devcontainers/features/tree/main/src/common-utils
[sudo manual]: https://manpages.ubuntu.com/manpages/questing/man5/sudoers-rs.5.html#sudoers%20file%20format
