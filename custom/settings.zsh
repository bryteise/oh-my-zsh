case "$TERM" in
    xterm*|rxvt*)
	    preexec () {
		print -Pn "\e]0;%n@%m: $1\a"  # xterm
	    }
	    precmd () {
		print -Pn "\e]0;%n@%m: %~\a"  # xterm
	    }
	    ;;
    screen*)
	    precmd () { print -Pn "\033k\033\134\033k%m[%1d]\033\134" }
	    preexec () { print -Pn "\033k\033\134\033k%m[$1]\033\134" }
	    ;;
esac