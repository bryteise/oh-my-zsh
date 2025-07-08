# Set editor for emacs
export EDITOR="emacsclient -t -a ''"
export VISUAL="emacsclient -t -a ''"
# Custom go path
export GOPATH=~/.go
# export path to include personal bin
path=(~/bin ~/.cargo/bin ~/.go/bin ~/.local/bin /usr/lib/ccache/bin /usr/local/bin $path)

# Get terminal color settings right
if [ -e /usr/share/terminfo/x/xterm-256color ] && \
       [ "$TERM" = "xterm" ]; then
    export TERM=xterm-256color
fi

if [ -e /usr/share/terminfo/s/screen-256color ] && \
       [ "$TERM" = "screen" ]; then
    export TERM=screen-256color
fi
# Add additonal man page locations
export MANPATH=/usr/share/man:$MANPATH
