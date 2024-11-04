HISTFILE="/home/yuri/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug load

# bindkey "^P" history-beginning-search-backward
# bindkey "^N" history-beginning-search-forward
stty -ixon
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward
PROMPT='%d$ '

# Aliases
alias sourcezshrc='source ~/.zshrc'
alias vizshrc='nvim ~/dotfiles/zsh/.zshrc'
alias ll='ls -alF -h --color=auto'
alias ls='ls --color=auto'
alias vimdotfilesreadme='nvim ~/dotfiles/README.md'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias pbc='xsel --clipboard --input'
alias pwdc='pwd | tr -d "\n" | xsel --clipboard --input'
alias o='open'
alias n='npm'

# Aliases for nvim
alias vi='nvim'

# Aliases for safe overwriting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Aliases for apt
alias agi='sudo apt install'
alias agr='sudo apt remove'
alias agu='sudo apt update'

# Aliases for tmux
alias t='tmux'
alias vitmuxconf='nvim ~/dotfiles/tmux/.tmux.conf'
alias sourcetmuxconf='tmux source ~/.tmux.conf'

# Aliases for git
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gcoa='git checkout —-amend'
alias gcb='git checkout -b'
alias gctm='git commit -m'
alias gg='git grep'
alias gad='git add'
alias gd='git diff'
alias gl='git log'
alias grs='git reset --soft HEAD~1'
alias gam='git amend'

# Aliases for Docker
alias d='docker'
alias dc='docker-compose'
alias dcnt='docker container'
alias dcur='docker container ls -f status=running -l -q'
alias dexec='docker container exec -it $(dcur)'
alias dimg='docker image'
alias drun='docker container run —rm -d'
alias drunit='docker container run —rm -it'
alias dstop='docker container stop $(dcur)'

# Aliases for Yarn
alias y='yarn'

# Global aliases
alias -g A='| awk'
alias -g C='| pbcopy'
alias -g C='| wc -l'
alias -g G='| grep --color=auto'
alias -g H='| head'
alias -g T='| tail'
alias -g L='| less -R'
alias -g X='| xargs'

# Tree with depth
treed() {
    tree -a -L "$1"
}

# Keychain for ssh keys setup
# /usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519_github
# source $HOME/.keychain/$(hostname)-sh
# eval $(keychain --eval --agents ssh id_ed25519_github)

# Load nodenv
export PATH="$HOME/.nodenv/shims:$PATH"

# Load linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Load git-prompt for show git branch in terminal
source ~/.zsh/git-prompt.sh

# Set git-prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# Custom function to truncate git branch names
# truncate_git_branch() {
#   local branch_name=$(__git_ps1 "%s")
#   local max_length=16  # Maximum length you desire for the branch name
# 
#   if (( ${#branch_name} > max_length )); then
#     # Truncate and append '…'
#     branch_name="${branch_name:0:$(($max_length-3))}…"
#   fi
# 
#   echo $branch_name
# }

setopt PROMPT_SUBST ; PS1='%F{white}%n@%m%f: %F{cyan}%~%f \$ '
