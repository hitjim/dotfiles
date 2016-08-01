export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'THIS DEMANDS %d'
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' format 'BEHOLD, %d!'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/hitjim/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# mine
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
