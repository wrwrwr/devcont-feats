# Devcontainer features

A couple of custom features for [devcontainers]:

* [add-user]: Creates a user with the specified name and ids.
* [apt-https]: Bootstraps HTTPS transport without using HTTP.
* [apt-get]: Installs packages assuming apt is available.
* [sudo-runas]: Allows a user to execute a command as another user.

[devcontainers]: https://containers.dev/
[add-user]: src/add-user
[apt-https]: src/apt-https
[apt-get]: src/apt-get
[sudo-runas]: src/sudo-runas

## Usage

Add to `.devcontainer/devcontainer.json` under `features`.\
Some of the features also require `overrideFeatureInstallOrder`.

Only tested with Ubuntu, but might work with other Debian variants.

## Notes

**License**: MIT\
**Assisted**: Project setup updates, documentation review and fixes
by the VS Code agent (Claude Haiku 4.5 / GPT-5 mini).
