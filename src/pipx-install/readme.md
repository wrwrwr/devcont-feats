# Install using pipx (pipx-install)

Installs Python tools assuming pipx is available.

Installs globally (`/opt/pipx`), using the system's Python version.

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/apt-install:0": {
        "packages": "pipx"
    },
    "ghcr.io/wrwrwr/devcont-feats/pipx-install:0": {
        "packages": "fonttools,prek"
    }
}
```
