### Alacritty/tmux fonts

Per the [docs](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#terminfo):

```sh
$ curl -o ~/alacritty.info https://github.com/alacritty/alacritty/blob/master/extra/alacritty.info
$ sudo tic -xe alacritty,alacritty-direct ~/alacritty.info
$ rm ~/alacritty.info
```
