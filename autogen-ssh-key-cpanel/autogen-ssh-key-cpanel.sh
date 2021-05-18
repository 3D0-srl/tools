#!/bin/bash
#
# autogen-ssh-key-cpanel
#
# Usage: 
#   ./autogen-ssh-key-cpanel.sh KEYNAME COMMENT
#

generate_keys() {
    ssh-keygen -t rsa -b 4096 -f $PATHNAME -C $COMMENT -q -N ""
}


add_key_into_ssh_agent() {
    eval "$(ssh-agent -s)"
    ssh-add $PATHNAME
}


print_ssh_pub_key_on_console() {
    echo -e '\nPUBLIC KEY:'
    cat "$PATHNAME.pub"
}


create_ssh_config() {
    echo -e "Host $KEYNAME 
    Hostname github.com
    User git
    IdentityFile $PATHNAME
    StrictHostKeyChecking no \n" >> $PATH_SSH_CONFIG

    chmod 600 $PATH_SSH_CONFIG
} 


main() {
    KEYNAME=$1
    COMMENT=$2
    PATH_SSH="$HOME/.ssh"
    PATH_SSH_CONFIG="$PATH_SSH/config"
    PATHNAME="$PATH_SSH/$KEYNAME"
    

    # check arguments
    if [[ -z $KEYNAME ]] || [[ -z $COMMENT ]]; then
        echo "Error: key name or comment are not set"
        exit 1
    fi 

    # call functions
    generate_keys
    add_key_into_ssh_agent
    print_ssh_pub_key_on_console
    create_ssh_config

    exit 0
}

# Start
main $1 $2
