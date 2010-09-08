# copy pubkey to server over ssh and add to authorized_keys
function sshpkey() {
        echo "Sending public key to $1";
        cat ~/.ssh/id_rsa.pub | ssh $1 "cat - >> ~/.ssh/authorized_keys2"
}