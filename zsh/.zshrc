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
# bindkey "^P" history-beginning-search-backward
# bindkey "^N" history-beginning-search-forward
stty -ixon
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward
PROMPT='%d$ '

/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519_github
source $HOME/.keychain/$(hostname)
alias vim='nvim'
