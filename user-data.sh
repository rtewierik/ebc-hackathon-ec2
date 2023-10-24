#!/bin/bash
sudo snap install docker
test -d ebc-hackathon-ec2 || git clone https://github.com/rtewierik/ebc-hackathon-ec2
cd ebc-hackathon-ec2
sudo docker-compose up -d