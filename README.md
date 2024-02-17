# Very Lame Dotfiles [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

These are bad, and extremely opinionated. Use at your own peril.

## Prerequisites

- git
- gnu stow (for symlinking)
- tmux (optional)
- neovim

## Installation (repository)

```sh
git clone --recurse-submodules git@git.dubzland.com:dubzland/dotfiles.git $HOME/.dotfiles
```

This repository is broken down into 4 modules (core, i3, nvim, and dev). Each
provides a different subset of functionality, and not all are needed in every
environment.

| Module       | Description                                                            |
| ------------ | ---------------------------------------------------------------------- |
| [core][core] | Base functionality. Bash, tmux, and alacritty are all configured here. |
| [i3][i3]     | Configuration and associated scripts for the i3 window manager.        |
| [nvim][nvim] | Neovim configuration suitable for either general purpose work, or dev. |
| [dev][dev]   | Shell and tool configuration for various development environments.     |

### Additional repos

- [dotfiles.dev](https://git.dubzland.net/jdubz/dotfiles.dev)
- [dotfiles.x11](https://git.dubzland.net/jdubz/dotfiles.x11)

### License

[MIT](LICENSE)

[core]: docs/core.md
[i3]: docs/i3.md
[nvim]: docs/nvim.md
[dev]: docs/dev.md
