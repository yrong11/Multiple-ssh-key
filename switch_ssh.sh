#!/bin/zsh
env=$1
ssh_path=id_rsa
if [ $1 ] ;then
    ssh_path=$env"_"$ssh_path
fi
ssh-add -D
ssh-add ~/.ssh/$ssh_path
