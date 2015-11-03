
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
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