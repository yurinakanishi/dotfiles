# Getting Started

Clone this repo to your root directory(`git clone git@github.com:yurinakanishi/dotfiles.git`)

# Zsh

## install zsh

`sudo apt update`

`sudo apt install zsh -y`

`zsh --version`

`chsh -s $(which zsh)`

to make zsh default shell

## Install zplug
```curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh```

https://github.com/zplug/zplug

## Install git prompt for show current branch of git in terminal

`mkdir ~/.zsh`

`cd ~/.zsh`

`curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh`

# Fuze

## install fuze

`sudo apt install fuse -y`

# Neovim

## install Neovim

`curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage`

`chmod u+x nvim.appimage`

`./nvim.appimage`

Ref: https://zenn.dev/apuspac/articles/neovim-tukau

# Tmux

## install tmux

`sudo apt-get install tmux`

## If tmux key binding isn't applied, try below

1. Reload the configuration. Once inside a tmux session, press `prefix + b` followed by `:` to bring up the command prompt at the bottom of the window. Then type:
   `source-file ~/.tmux.conf`

2. if 1 doesn't work, try kill all tmux process.
   `ps ax | grep tmux` to confirm current working tmux session and `kill -9 <process number>` to kill it.

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm` to clone plugin manager

`prefix + I` to install plugins

# Create Symbolic link

1. `chmod +x ~/dotfiles/scripts/create_symlinks.zsh`
2. `~/dotfiles/scripts/create_symlinks.zsh`

# Linux Brew

## This is optional because this dotfiles setting doesn't use brew'

Ref: https://brew.sh/

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Ref: https://docs.brew.sh/Homebrew-on-Linux

`test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"`

`test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`


# Install Hack Nerd Font
```mkdir -p ~/.local/share/fonts```

```cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf```

```sudo apt install fontconfig```

```fc-list | grep "Hack"```

to confirm installed

```fc-cache -fv```

# Install Tree
```sudo apt install tree```
