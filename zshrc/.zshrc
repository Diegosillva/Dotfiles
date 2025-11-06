
eval "$(starship init zsh)"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

export EDITOR="nvim"
export PATH=$PATH:/usr/local/go/bin
export LANG=pt_BR.UTF-8

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

export GOROOT=
export GOPATH=~/go

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls="clear"
alias n="nvim"
alias tmux="tmux -f ~/Dotfiles/tmux/.tmux.conf"
alias ls='eza --icons --color=auto --group-directories-first'
alias ll='eza -l --icons --color=auto --group-directories-first'
alias la='eza -la --icons --color=auto --group-directories-first'



export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/init-nvm.sh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
