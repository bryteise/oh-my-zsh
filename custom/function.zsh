# copy pubkey to server over ssh and add to authorized_keys
function sshpkey() {
    if [[ $2 =~ [0-9]+ ]]; then
        echo "Sending public key to $1 on port $2";
        cat ~/.ssh/id_rsa.pub | ssh $1 -p $2 "cat - >> ~/.ssh/authorized_keys2"
    else
	echo "sending public key to $1 on port 22";
	cat ~/.ssh/id_rsa.pub | ssh $1 "cat - >> ~/.ssh/authorized_keys2"
    fi
}

# extract an archive, any type, and its yours, if you'd like
# from http://zshwiki.org/home/examples/functions
extract_archive () {
    local old_dirs current_dirs lower
    lower=${(L)1}
    old_dirs=( *(N/) )
    if [[ $lower == *.tar.gz || $lower == *.tgz ]]; then
        tar zxfv $1
    elif [[ $lower == *.gz ]]; then
        gunzip $1
    elif [[ $lower == *.tar.bz2 || $lower == *.tbz ]]; then
        bunzip2 -c $1 | tar xfv -
    elif [[ $lower == *.bz2 ]]; then
        bunzip2 $1
    elif [[ $lower == *.zip ]]; then
        unzip $1
    elif [[ $lower == *.rar ]]; then
        unrar e $1
    elif [[ $lower == *.tar ]]; then
        tar xfv $1
    elif [[ $lower == *.lha ]]; then
        lha e $1
    else
        print "Unknown archive type: $1"
        return 1
    fi
    # Change in to the newly created directory, and
    # list the directory contents, if there is one.
    current_dirs=( *(N/) )
    for i in {1..${#current_dirs}}; do
        if [[ $current_dirs[$i] != $old_dirs[$i] ]]; then
            cd $current_dirs[$i]
            ls
            break
        fi
    done
}

# copy files to directory, if it doesn't exist try and create it
function dcp () {
    args="$@"
    shift $(($# - 1))
    if [[ ! -d $1 ]]; then
	mkdir -p $1
    fi
    if [[ $? -eq 0 ]]; then
	cp `echo $args`
    fi
}

# move files to directory, if it doesn't exist try and create it
function dmv () {
    args="$@"
    shift $(($# - 1))
    if [[ ! -d $1 ]]; then
	mkdir -p $1
    fi
    if [[ $? -eq 0 ]]; then
	mv `echo $args`
    fi
}