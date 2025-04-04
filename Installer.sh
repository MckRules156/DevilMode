#!/bin/bash
clear

# Define color codes
RED='\033[1;31m'      # Red
BLUE='\033[1;34m'     # Blue
WHITE='\033[1;37m'    # Bright White
GREEN='\033[1;32m'    # Green
NC='\033[0m'          # Reset color

echo
echo -e "${RED}$(cat Media/InstallerBanner.txt)${NC}"
echo

echo
echo "• Welcome to the DevilMode installer on Termux"
echo

echo -e "${GREEN}•${BLUE} Installing php ...${NC}"
echo
pkg install php -y
echo

echo -e "${GREEN}•${BLUE} Installing termux-tools ...${NC}"
echo
pkg install termux-tools -y
echo

echo -e "${GREEN}•${BLUE} Installing termux-api ...${NC}"
echo
pkg install termux-api -y
echo

echo -e "${GREEN}•${BLUE} Installing xdg-utils ...${NC}"
echo
pkg install xdg-utils -y
echo

echo -e "${GREEN}•${BLUE} Updating repositories ...${NC}"
echo
pkg update && pkg upgrade -y
echo

echo -e "${GREEN}•${BLUE} Adding the executable script to this path ...${NC}"
mv Media/DevilMode.sh $(pwd)
echo

echo -e "${GREEN}•${BLUE} Granting execution permissions to the script ...${NC}"
chmod +x DevilMode.sh
echo

echo
echo "• Process completed!"
echo

