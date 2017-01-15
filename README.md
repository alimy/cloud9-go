Cloud9 v3 Dockerfile
=============

This repository contains Dockerfile of Cloud9 IDE integrate golang develop enviroment for Docker's automated build published to the public Docker Hub Registry.

# Base Docker Image
[kdelfour/cloud9-docker](https://registry.hub.docker.com/u/kdelfour/cloud9-docker/)

# Installation

## Install Docker.

Download automated build from public Docker Hub Registry: docker pull kdelfour/cloud9-docker

(alternatively, you can build an image from Dockerfile: docker build -t="bitriory/cloud9-go" github.com/alimy/cloud9-go)

## Usage

    docker run -it -d -p 80:80 bitriory/cloud9-go
    
You can add a workspace as a volume directory with the argument *-v /your-path/workspace/:/workspace/* like this :

    docker run -it -d -p 80:80 -v /your-path/workspace/:/workspace/ bitriory/cloud9-go
    
## Build and run with custom config directory

Get the latest version from github

    git clone https://github.com/alimy/cloud9-go
    cd cloud9-go/

Build it

    sudo docker build --force-rm=true --tag="$USER/cloud9-go:latest" .
    
And run

    sudo docker run -d -p 80:80 -v /your-path/workspace/:/workspace/ $USER/cloud9-go:latest
    
Enjoy !!    
