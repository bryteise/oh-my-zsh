# Set editor for emacs
export EDITOR="emacsclient -t -a ''"
export VISUAL="emacsclient -t -a ''"
# export path to include personal bin
path=(~/bin /usr/local/bin $path)
# Get terminal color settings right
if [ -e /usr/share/terminfo/x/xterm-256color ] && \
       [ "$COLORTERM" = "xfce4-terminal" ]; then
    export TERM=xterm-256color
fi
