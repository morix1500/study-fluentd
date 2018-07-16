#!/bin/bash

curl -fsSL get.docker.com -o get-docker.sh
sudo CHANNEL=stable sh get-docker.sh

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod 755 /usr/local/bin/docker-compose
