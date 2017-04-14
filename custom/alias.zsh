# for use with emacs in daemon mode
alias e="emacsclient -c -a '' -n"
alias et="emacsclient -t -a ''"
alias E="SUDO_EDITOR=\"emacsclient -t -a emacs\" sudoedit"

# look for examples in man pages
alias lemp="LESS='+/^EXAMPLE' man "

# make tmux a little less verbose
alias tmuxa="tmux attach -t"
alias tmuxn="tmux new -s"
alias tmuxl="tmux list-session"

# indent settings for the linux kernel
alias indentk="indent -kr -i8 -ts8 -sob -l80 -ss -bs -psl "

# ssh to internal network
alias issh="ssh -F /etc/ssh/ssh_config"

# scp to internal network
alias iscp="scp -F /etc/ssh/ssh_config"

# monitor dmesg for updates
alias wdmesg="watch 'dmesg | tail -20'"

# extract files
alias ex=extract_archive

# git to g
alias g=git
