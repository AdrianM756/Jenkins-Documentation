#!/bin/bash

## NOTE: Make sure to change this in to an executable file after downloaded. For example: "chmod +x install_jenkins.sh"

echo "Installing wget..."
sudo yum install wget -y

echo "Adding Jenkins repository..."
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "Importing Jenkins GPG key..."
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "Upgrading system packages..."
sudo dnf upgrade -y

echo "Installing Jenkins dependencies..."
sudo dnf install -y fontconfig java-17-openjdk

echo "Installing Jenkins..."
sudo dnf install -y jenkins

echo "Reloading systemd daemon..."
sudo systemctl daemon-reload

echo "Enabling Jenkins service..."
sudo systemctl enable jenkins

echo "▶Starting Jenkins service..."
sudo systemctl start jenkins

echo "Verifying Jenkins installation..."
jenkins --version

# Show IP addresses
LOCAL_IP=$(hostname -I | awk '{print $1}')
PUBLIC_IP=$(curl -s ifconfig.me)

echo "Network Info:"
echo "Local IP Address: $LOCAL_IP"
echo "Public IP Address: $PUBLIC_IP"

echo "Jenkins installation complete."
echo "You can now access Jenkins at: http://$LOCAL_IP:8080"
