# HTTPS-only APT (apt-https)

Bootstraps HTTPS transport without using HTTP.

This feature may be useful for enabling `apt` in HTTPS-only networks.\
It should be ordered before features that use apt.

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/apt-https:0": {}
},
"overrideFeatureInstallOrder": [
    "ghcr.io/wrwrwr/devcont-feats/apt-https"
]
```
