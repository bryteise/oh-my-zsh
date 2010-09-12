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