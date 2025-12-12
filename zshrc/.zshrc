eval "$(starship init zsh)"

export EDITOR="nvim"
export PATH=$PATH:/usr/local/go/bin
export LANG=pt_BR.UTF-8

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

export GOROOT=
export GOPATH=~/go

alias cls="clear"
alias tmux="tmux -f ~/Dotfiles/tmux/.tmux.conf"
alias ls='eza --icons --color=auto --group-directories-first'
alias ll='eza -l --icons --color=auto --group-directories-first'
alias la='eza -la --icons --color=auto --group-directories-first'
