# Getting Started
Clone this repo to your root directory(```git clone git@github.com:yurinakanishi/dotfiles.git```)

# Zsh
## install zsh
```sudo apt update```

```sudo apt install zsh -y```

```zsh --version```

```chsh -s $(which zsh)```
to make zsh default shell

# Fuze
## install fuze
```sudo apt-get install fuse -y```

# Neovim
## install neovim
```curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage```

```chmod u+x nvim.appimage```

```./nvim.appimage```

[Ref](https://zenn.dev/apuspac/articles/neovim-tukau)

# Tmux
## install tmux
```sudo apt-get install tmux```


## If tmux key binding isn't applied, try below

1. Reload the configuration. Once inside a tmux session, press ```Ctrl+b``` (the default prefix key in tmux, unless you've changed it) followed by ```:``` to bring up the command prompt at the bottom of the window. Then type:
```source-file ~/.tmux.conf```
2. if 1 doesn't work, try kill all tmux process.
```ps ax | grep tmux``` to confirm current working tmux session and ```kill -9 <process number>``` to kill it.

# Create Symbolic link

1. ```chmod +x ~/dotfiles/scripts/create_symlinks.zsh```
2. ```~/dotfiles/scripts/create_symlinks.zsh```


