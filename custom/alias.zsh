# for use with emacs in daemon mode
alias e="emacsclient -c -a '' -n"
alias et="emacsclient -t -a ''"

# look for examples in man pages
alias lemp="LESS='+/^EXAMPLE' man "

# tmux attach is a pain
alias tmuxa="tmux attach"

# indent settings for the linux kernel
alias indentk="indent -kr -i8 -ts8 -sob -l80 -ss -bs -psl "