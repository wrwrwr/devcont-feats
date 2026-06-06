# Sudo run-as (sudo-runas)

Allows a user to execute a command as another user.

This feature is a convenience script that adds entries to the
[sudoers] configuration for executing commands without a password.

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/sudo-runas:0": {
        "invoker": "dev",
        "executor": "root",
        "command": "/usr/bin/apt install zsh"
    }
}
```

Would result in the following entry in `/etc/sudoers.d/devcont-sudo-runas`:

```sudoers
dev ALL = (root) NOPASSWD: /usr/bin/apt install zsh
```

To add more commands, suffix option names with 1..9:

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/sudo-runas:0": {
        "command1": "/usr/bin/apt update",
        "command2": "/usr/bin/apt upgrade",
        "executor3": "postgres",
        "command3": "/usr/bin/psql db"
    }
}
```

## Command syntax

> A simple file name allows the user to run the command with any arguments
> they wish. However, you may also specify command line arguments that have
> to be used, in which case the command line has to match exactly. You can
> use the special argument "" to indicate that the command may only be run
> without command line arguments, or the argument ‘*’ to match any trailing
> arguments. You cannot use wildcards inside the argument list. A directory
> is a fully qualified path name ending in a ‘/’. When you specify a directory
> in a Cmnd_List, the user will be able to run any file within that directory
> (but not in any sub-directories therein).
>
> If a Cmnd has associated command line arguments, then the arguments in the
> Cmnd must match exactly those given by the user on the command line. Note
> that the following characters must be escaped with a ‘\’ if they are used
> in command arguments: ‘,’, ‘:’, ‘=’, ‘\’. (...)

Note that commands with wildcards, negation, arbitrary arguments (no ""), and
the `sudoedit` built-in may be equivalent to `ALL` due to various tricks.

Moreover, the no-arguments marker needs to use double quotes, and these need
to be double-escaped due to shell expansions: `"/usr/bin/tee \\\"\\\"`.

## Common utilities

The [common-utils] feature adds an [allow-all] entry if the `containerUser` or
`remoteUser` is customized, so you may want to use some other feature instead.

[allow-all]: https://github.com/devcontainers/features/blob/72df8a5f191f840a66dc2e2ced10a136e4d75173/src/common-utils/main.sh#L475
[common-utils]: https://github.com/devcontainers/features/tree/main/src/common-utils
[sudoers]: https://manpages.ubuntu.com/manpages/resolute/man5/sudoers-rs.5.html
