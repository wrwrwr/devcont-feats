# Devcontainer features

* [add-user]: Creates a user with the specified name and id.
* [apt-https]: Bootstraps HTTPS transport without using HTTP.
* [sudo-runas]: Allows a user to execute listed commands as another user.

[add-user]: src/add-user
[apt-https]: src/apt-https
[sudo-runas]: src/sudo-runas

## Usage

Add to `.devcontainer/devcontainer.json` under `features`.
Some of the features also require adding `overrideFeatureInstallOrder`.

## Notes

**License**: MIT\
**Assisted**: Project setup updates, documentation review and fixes
by the VS Code agent (Claude Haiku 4.5 / GPT-5 mini).
