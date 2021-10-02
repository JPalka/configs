#!/usr/bin/env zsh
sshfs -o default_permissions,reconnect,no_readahead,cache=no,IdentityFile=/home/jony/.ssh/het_rsa jony@195.201.5.73:/home/jony/storage /home/jony/storage
