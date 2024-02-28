# Development environment

- Bash configuration for various programming languages and cli tools
- Local git configuration
- [asdf][asdf] setup

## asdf installation and finalization:

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

[asdf]: https://asdf-vm.com/
