#! bin/bash

if [uname -s == Darwin]
    then
        if [uname -a | awk '{print $15}' == x86_64]
            then
                if [docker ps | grep 'Cannot connect'| awk '{print $1}' == Cannot]
                    then
                    rm -rf ~/Library/Containers/com.docker.docker
                    mkdir -p ~/goinfre/Docker/Data
                    ln -s ~/goinfre/Docker ~/Library/Containers/com.docker.docker
                fi
                
        fi
fi

