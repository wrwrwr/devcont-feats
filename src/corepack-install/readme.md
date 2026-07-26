# Install using corepack (corepack-install)

Installs a package manager assuming corepack is available.

Installs and enables npm, pnpm or Yarn. This feature can make
a package manager available globally without requiring sudo.

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/apt-install:0": {
        "packages": "node-corepack"
    },
    "ghcr.io/wrwrwr/devcont-feats/corepack-install:0": {
        "managers": "npm"
    }
}
```
