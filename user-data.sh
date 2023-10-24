#!/bin/bash
if [ -x "$(command -v git)" ]; then
    sudo yum update
    sudo yum install git
    git version
if

if [ -x "$(command -v docker)" ]; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    docker --version
if

if [ -x "$(command -v docker)" ]; then
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose -v
if

sudo service docker start
git clone https://github.com/rtewierik/ebc-hackathon-ec2
cd ebc-hackathon-ec2 docker-compose up -d