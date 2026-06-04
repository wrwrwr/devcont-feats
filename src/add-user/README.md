# Add user (add-user)

Creates a user with the specified name and ids.

Creates a home directory, does not install a shell or add sudoers entries.

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/add-user:0": {
        "name": "dev",
        "userId": 1111,
        "groupId": 1111,
        "shell": "/bin/bash"
    }
}
```

```json
"remoteUser": "dev",
"updateRemoteUserUID": false,
"features": {
    "ghcr.io/wrwrwr/devcont-feats/add-user:0": {
        "userId": 1111
    }
}
```
