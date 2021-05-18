#!/bin/bash
#
# autogen-ssh-key-cpanel
#
# Usage: 
#   ./autogen-ssh-key-cpanel.sh KEYNAME COMMENT
#


generate_keys()
{
    ssh-keygen -t rsa -b 4096 -f $PATHNAME -C $COMMENT -q -N ""
}


add_key_into_ssh_agent()
{
    eval "$(ssh-agent -s)"
    ssh-add $PATHNAME
}


print_ssh_pub_key_on_console()
{
    echo -e '\nPUBLIC KEY:'
    cat "$PATHNAME.pub"
}


main(){
    KEYNAME=$1
    COMMENT=$2
    PATHNAME="$HOME/.ssh/$KEYNAME"

    # check arguments
    if [[ -z $KEYNAME ]] || [[ -z $COMMENT ]]; then
        echo "Error: key name or comment are not set"
        exit 1
    fi 

    # call functions
    generate_keys
    add_key_into_ssh_agent
    print_ssh_pub_key_on_console

    exit 0
}

# Start
main $1 $2
