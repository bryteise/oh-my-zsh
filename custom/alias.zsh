# for use with emacs in daemon mode
alias e="emacsclient -c -a '' -n"
alias et="emacsclient -t -a ''"
alias E="SUDO_EDITOR=\"emacsclient -t -a emacs\" sudoedit"

# make tmux a little less verbose
alias tmuxa="tmux attach -t"
alias tmuxn="tmux new -s"
alias tmuxl="tmux list-session"

# git to g
alias g=git

# youtube-dl
alias ydv="youtube-dl --format mp4 --restrict-filenames -o '%(title)s.%(ext)s'"
alias yds="youtube-dl --audio-format aac -x --restrict-filenames -o '%(title)s.%(ext)s'"
