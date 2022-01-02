#!/bin/bash
# Update the repositories
sudo apt update
# Allow APT to work via HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
# Install Docker's GPG keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add Docker's repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
# Update repositories again
sudo apt update
# Install Docker Community Edition
sudo apt install docker-ce -y
# Allows to use Docker without sudo
sudo usermod -aG docker ${USER}
# Download and install Docker Compose v1.29.2
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose