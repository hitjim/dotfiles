# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's go bin if it exists
if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

# set PATH so it includes go bin if it exists
if [ -d "/usr/local/go/bin" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi

# 256 colors
if [ -e /usr/share/terminfo/x/xterm+256color ]; then
  export TERM='xterm-256color'
elif [ -e /usr/share/terminfo/78/xterm+256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi
