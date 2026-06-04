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

If the user to create is the main workspace user, then the feature
must run before other features that depend on the ids of the user:

```json
"remoteUser": "dev",
"updateRemoteUserUID": false,
"features": {
    "ghcr.io/wrwrwr/devcont-feats/add-user:0": {
        "userId": 1111
    }
},
"overrideFeatureInstallOrder": [
    "ghcr.io/wrwrwr/devcont-feats/add-user"
]
```
