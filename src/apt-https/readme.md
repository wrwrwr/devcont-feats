# HTTPS-only APT (apt-https)

Bootstraps HTTPS transport without using HTTP.

This feature should usually be ordered before all other features.
It may be useful for configuring `apt` in HTTPS-only networks.

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/apt-https:0": {}
},
"overrideFeatureInstallOrder": [
    "ghcr.io/wrwrwr/devcont-feats/apt-https"
]
```
