## install zsh
```sudo apt update```

```sudo apt install zsh -y```

```zsh --version```

make zsh default shell
```chsh -s $(which zsh)```

## install tmux
```sudo apt-get install tmux```

## install neovim
```curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage```

```chmod u+x nvim.appimage```

```./nvim.appimage```
[ref](https://zenn.dev/apuspac/articles/neovim-tukau)


## Create Symbolic link

1. ```chmod +x ~/dotfiles/scripts/create_symlinks.zsh```
2. ```~/dotfiles/scripts/create_symlinks.zsh```


## If tmux key binding isn't applied, try below

Reload the configuration. Once inside a tmux session, press ```Ctrl+b``` (the default prefix key in tmux, unless you've changed it) followed by ```:``` to bring up the command prompt at the bottom of the window. Then type:
```source-file ~/.tmux.conf```
