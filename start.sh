#!/bin/bash

if [ "$(uname -m)" =~ "x64" ];
then
    sudo docker-compose up jenkins-x64
elif [ "$(uname -m)" =~ "armv7" ];
then
    sudo docker-compose up jenkins-arm32
else
    echo "$(uname -m) is not currently supported. Add corresponding docker images"
fi 
