#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt install software-properties-common -y
sudo apt-get install -y build-essential
sudo apt-get install -y make gcc

sudo add-apt-repository ppa:deadsnakes/ppa -y

sudo apt-get install -y python3.10 python3.10-dev python3.10-venv
sudo apt-get install -y linux-headers-$(uname -r)
# Add Docker's official GPG key:
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker $USER
