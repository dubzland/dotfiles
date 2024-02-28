# Dotfiles
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

My personal dotfiles.  Highly opinionated.  Totally awesome.

## Description

Primary workstation is a Core-i9 running Gentoo Linux, with the [i3][i3] window
manager running xterm (yes, [xterm][xterm]). On MacOS, [alacritty][alacritty]
replaces xterm.  Colorscheme is synchronized across bash, alacritty, i3, xterm
and vim/neovim by [base16][base16] themes.

## Prerequisites

- git
- gnu stow (for symlinking)

## Installation

For a full installation, just clone the directory and use the `install` script:

```console
$ git clone --recurse-submodules git@git.dubzland.com:dubzland/dotfiles.git $HOME/.dotfiles
$ MODULES=core,dev,i3,nvim $HOME/.dotfiles/install
```

## Modules

This repository is broken down into 4 modules (core, i3, nvim, and dev). Each
provides a different subset of functionality, and not all are needed in every
environment.

| Module        | Description                                                            |
| ------------- | ---------------------------------------------------------------------- |
| [core](#core) | Base functionality. Bash, tmux, and alacritty are all configured here. |
| [i3](#i3)     | Configuration and associated scripts for the i3 window manager.        |
| [nvim](#nvim) | Neovim configuration suitable for either general purpose work, or dev. |
| [dev](#dev)   | Shell and tool configuration for various development environments.     |

### core

Handles the bulk of the `bash` configuration (via drop-in directories), and sets
up `tmux`. Also includes configuration for [alacritty][alacritty] (primarily for
MacOS).

#### Prerequisites

- tmux
- alacritty (MaxOS only)
- fzf
- ripgrep

On MacOS, install Alacritty per the [docs][alacritty-install], then:

```console
$ curl -o ~/alacritty.info https://github.com/alacritty/alacritty/blob/master/extra/alacritty.info
$ sudo tic -xe alacritty,alacritty-direct ~/alacritty.info
$ rm ~/alacritty.info
```

### i3

This includes general configuration for X11 apps (including .Xresources and
xterm), as well as configuration for `i3` itself and `i3status`.

#### Prerequisites

- i3 & i3status
- xterm
- rofi
- pianobar
- dunst (for notifications)
- dex (for desktop autostart)
- feh (for wallpaper)
- parcellite (for clipboard history)
- barrier (for KVM support)
- nextcloud-client (duh)

#### setup

```console
# Set font sizes in .Xresources
$ cp $HOME/.Xresources.d/font-sizes.example $HOME/.Xresources.d/font-sizes

# Link autostarts
$ ln -sf /usr/share/applications/barrier.desktop $HOME/.config/autostart/
$ ln -sf /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop $HOME/.config/autostart/
$ ln -sf /usr/share/applications/xscreensaver.desktop $HOME/.config/autostart/
```

### nvim

Full development oriented [Neovim][neovim] configuration.

#### Prerequisites

- neovim

### dev

- Bash configuration for various programming languages and cli tools
- Local git configuration
- [asdf][asdf] setup

#### asdf installation and finalization:

```console
# Install asdf
$ git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# Re-source the bash hook
$ source $HOME/.config/bash_profile.d/50-asdf.bash

# Install required plugins
$ asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
$ asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
$ asdf plugin add python https://github.com/danhper/asdf-python.git
$ asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

# Install required tools
$ asdf install
```

## License

[MIT](LICENSE)

[asdf]: https://asdf-vm.com/
[i3]: https://i3wm.org/
[neovim]: https://neovim.io/
[xterm]: https://invisible-island.net/xterm/
[base16]: https://github.com/tinted-theming
[alacritty]: https://alacritty.org/
[alacritty-install]: https://github.com/alacritty/alacritty/blob/master/INSTALL.md#terminfo
