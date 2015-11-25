# Set editor for emacs
export EDITOR="emacsclient -t -a ''"
export VISUAL="emacsclient -t -a ''"
# export path to include personal bin
path=(~/bin /usr/local/bin $path)
# Get terminal color settings right
if [ -e /usr/share/terminfo/x/xterm-256color ] && \
       [ "$TERM" = "xterm" ]; then
    export TERM=xterm-256color
fi

if [ -e /usr/share/terminfo/s/screen-256color ] && \
       [ "$TERM" = "screen" ]; then
    export TERM=screen-256color
fi
# Set rust source path for racer
export RUST_SRC_PATH=~/src/rust/src
