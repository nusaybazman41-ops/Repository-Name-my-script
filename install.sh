#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

clear

BLUE='\033[1;34m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
NC='\033[0m'

echo -e "${BLUE}"
cat << "EOF"

███╗   ██╗███████╗██████╗ ██╗   ██╗██╗      █████╗
████╗  ██║██╔════╝██╔══██╗██║   ██║██║     ██╔══██╗
██╔██╗ ██║█████╗  ██████╔╝██║   ██║██║     ███████║
██║╚██╗██║██╔══╝  ██╔══██╗██║   ██║██║     ██╔══██║
██║ ╚████║███████╗██████╔╝╚██████╔╝███████╗██║  ██║
╚═╝  ╚═══╝╚══════╝╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝

EOF

echo -e "${CYAN}NEBULA VPS INSTALLER${NC}"
echo ""
echo "1) Pterodactyl Panel"
echo "2) Blueprint"
echo "3) Docker"
echo "4) Nginx"
echo "5) Node.js"
echo "6) Python3"
echo "7) KVM"
echo "0) Exit"
echo ""

read -p "Select Option: " option

case $option in
1) bash scripts/pterodactyl.sh ;;
2) bash scripts/blueprint.sh ;;
3) bash scripts/docker.sh ;;
4) bash scripts/nginx.sh ;;
5) bash scripts/nodejs.sh ;;
6) bash scripts/python.sh ;;
7) bash scripts/kvm.sh ;;
0) exit ;;
*) echo "Invalid Option" ;;
esac
