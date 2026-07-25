# Devcontainer features

A couple of custom features for [devcontainers]:

* [add-user]: Creates a user with the specified name and ids.
* [apt-https]: Bootstraps HTTPS transport without using HTTP.
* [apt-install]: Installs packages assuming apt is available.
* [corepack-install]: Installs a package manager assuming corepack is available.
* [pipx-install]: Installs Python tools assuming pipx is available.
* [sudo-runas]: Allows a user to execute a command as another user.

[devcontainers]: https://containers.dev/
[add-user]: src/add-user
[apt-https]: src/apt-https
[apt-install]: src/apt-install
[corepack-install]: src/corepack-install
[pipx-install]: src/pipx-install
[sudo-runas]: src/sudo-runas

## Usage

Add to `.devcontainer/devcontainer.json` under `features`.
Some of the features need to be sorted before all other using
`overrideFeatureInstallOrder` and some depend on `apt-install`
with a base package.

Only tested with Ubuntu, but might work with other Debian variants.

## Notes

**License**: MIT\
**Status**: Experimental (only tested with Ubuntu)\
**Assisted**: Project setup updates, documentation review and fixes
by the VS Code agent (Claude Haiku 4.5 / GPT-5 mini).
