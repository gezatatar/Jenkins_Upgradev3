#!/bin/bash
sudo docker image build -t anshuldevops/jenkins-demo2:$1 -f jenkins-plugin-model/src/demo2-publish/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    sudo docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD
fi

sudo docker push anshuldevops/jenkins-demo2:$1
