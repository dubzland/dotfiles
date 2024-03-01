# Dotfiles
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

My personal dotfiles.  Highly opinionated.  Totally awesome.

## Description

Primary workstation is a Core-i9 running Gentoo Linux, with the [i3][i3] window
manager running xterm (yes, [xterm][xterm]). On MacOS, [alacritty][alacritty]
replaces xterm.  Colorscheme is synchronized across all modules via
[base16][base16] themes.

## Prerequisites

- git
- gnu stow (for symlinking)

## Installation

For a full installation, just clone the directory and use the `install` script:

```bash
git clone git@git.dubzland.com:dubzland/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/install core dev i3 nvim 
```

## Modules

This repository is broken down into 4 modules (core, i3, nvim, and dev). Each
provides a different subset of functionality, and not all are needed in every
environment.

| Module              | Description                                                            |
| ------------------- | ---------------------------------------------------------------------- |
| [core][core-module] | Base functionality. Bash, tmux, and alacritty are all configured here. |
| [dev][dev-module]   | Shell and tool configuration for various development environments.     |
| [i3][i3-module]     | Configuration and associated scripts for the i3 window manager.        |
| [nvim][nvim-module] | Neovim configuration suitable for either general purpose work, or dev. |

## License

[MIT][license-file]

[i3]: https://i3wm.org/
[neovim]: https://neovim.io/
[xterm]: https://invisible-island.net/xterm/
[base16]: https://github.com/tinted-theming
[alacritty]: https://alacritty.org/
[alacritty-install]: https://github.com/alacritty/alacritty/blob/master/INSTALL.md#terminfo
[core-module]: https://git.dubzland.com/dubzland/dotfiles.core
[dev-module]: https://git.dubzland.com/dubzland/dotfiles.dev
[i3-module]: https://git.dubzland.com/dubzland/dotfiles.i3
[nvim-module]: https://git.dubzland.com/dubzland/dotfiles.nvim
[license-file]: LICENSE
