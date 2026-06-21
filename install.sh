#!/bin/bash

clear

echo "=================================="
echo "      VPS INSTALLER MENU"
echo "=================================="
echo ""
echo "1. Install Docker"
echo "2. Install Nginx"
echo "3. Install Node.js"
echo "4. Install Python3"
echo "5. Exit"
echo ""

read -p "Select an option: " option

case $option in
    1)
        apt update
        apt install -y docker.io
        systemctl enable docker
        systemctl start docker
        echo "Docker installed successfully!"
        ;;
    2)
        apt update
        apt install -y nginx
        systemctl enable nginx
        systemctl start nginx
        echo "Nginx installed successfully!"
        ;;
    3)
        apt update
        apt install -y nodejs npm
        echo "Node.js installed successfully!"
        ;;
    4)
        apt update
        apt install -y python3 python3-pip
        echo "Python3 installed successfully!"
        ;;
    5)
        exit
        ;;
    *)
        echo "Invalid option!"
        ;;
esac
