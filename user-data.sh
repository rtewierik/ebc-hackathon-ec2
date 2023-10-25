#!/bin/bash
sudo touch /var/lib/cloud/scripts/per-boot/boot.sh
echo '#!/bin/bash
cd /home/ubuntu
sudo snap install docker
test -d ebc-hackathon-ec2 || git clone https://github.com/rtewierik/ebc-hackathon-ec2
cd ebc-hackathon-ec2
sudo docker-compose up -d
sleep 1m
cd vc-templates
curl -d "@VerifiableEvent.json" -X POST localhost:8080/issuer-api/default/config/templates/VerifiableEvent
curl -d "@VerifiableEmployment.json" -X POST localhost:8080/issuer-api/default/config/templates/VerifiableEmployment' | sudo tee /var/lib/cloud/scripts/per-boot/boot.sh
sudo chmod a+rx /var/lib/cloud/scripts/per-boot/boot.sh