# Minimal apt-get (apt-get)

Installs packages assuming apt is available.

Clears caches, but not lists. Skips recommended and suggested packages[^1].

[^1]: <https://www.debian.org/doc/manuals/debian-faq/pkg-basics.en.html#depends>

## Example usage

```json
"features": {
    "ghcr.io/wrwrwr/devcont-feats/apt-get:0": {
        "packages": "git,sudo"
    }
}
```
