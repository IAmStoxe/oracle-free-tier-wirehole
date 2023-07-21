#!/bin/bash

# Prereqs and docker
sudo apt-get update &&
    sudo apt-get install -yqq \
        curl \
        git \
        apt-transport-https \
        ca-certificates \
        gnupg-agent \
        software-properties-common

# Install Docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
    sudo chmod +x get-docker.sh
    sudo sh get-docker.sh

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.6.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
    sudo chmod +x /usr/local/bin/docker-compose &&
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# wirehole
git clone https://github.com/IAmStoxe/wirehole.git &&
    cd wirehole &&
    sudo docker-compose up
