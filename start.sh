#!/bin/bash

# if volume permission error: sudo chown 1000 jenkins/jenkins_home
if [[ "$(uname -m)" =~ "x86" ]];
then
    docker-compose $1 up jenkins-x64 gitea-x64
elif [[ "$(uname -m)" =~ "armv7" ]];
then
    sudo docker-compose $1 up jenkins-arm32 gitea-arm32
else
    echo "$(uname -m) is not currently supported. Add corresponding docker images"
fi 
