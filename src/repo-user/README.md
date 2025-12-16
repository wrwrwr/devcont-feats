
# Repository user (repo-user)

Creates a user with the specified name and ids.

## Example usage

```json
"containerUser": "dev",
"updateRemoteUserUID": false,
"features": {
    "ghcr.io/wrwrwr/devcont-feats/repo-user:0": {
        "name": "dev",
        "userId: 1111,
        "groupId": 1111
        "shell": "/bin/bash"
    }
}
```

## Docker rootless

If using docker rootless, `userId` and `groupId` should be set to the
host ids minus subuid / subgid (100000 by default) plus 1, for example:

```bash
cat /etc/subuid
# host-user:100000:65536

ls --numeric-uid-gid .devcontainer.json
# -rw-rw---- 1 123456 123456 .devcontainer.json

# Set userId to 123456 - 100000 + 1 = 23457
```
