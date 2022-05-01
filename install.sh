#!/data/data/com.termux/files/usr/bin/bash

# Project name : Termux-ytdlp
# Forked from: Khansaad1275
# Forked by: Fakeaccount12312
# Github: https://github.com/Fakeaccount12312/termux-ytdlp
# Date : 01.05.2022

echo -e "\e[035m"  "Updating default packages\n"
apt update && apt upgrade

echo -e "\e[032m" "Requesting acces to storage\n"
sleep 2
echo -e "\e[032m" "Allow Storage Permission!"
sleep 2
termux-setup-storage 
sleep 5

echo -e "\e[033m" "Installing python\n"
pkg install python

echo -e "\e[034m"  "Installing youtube-dlp\n"
pip install youtube-dlp

echo -e "\e[032m"  "Making the Youtube Directory to download the Vidoes\n"
mkdir ~/storage/shared/Youtube

echo -e "\e[036m"  "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Creating Termux-URL-Opener Script.\n"

mv termux-url-opener ~/bin/
chmod +x ~/bin/termux-url-opener

echo -e "\n"
echo -e "\e[032m" "Process Complete!"
echo -e "\e[032m" "Now you can download any youtube or other video in any quality or file type you like."
echo -e "\e[032m" "This is just a simple wrapper script for yt-dlp, go check out their github if you are thankful or interested."
echo -e "\e[032m" "You may delete this directory now."
read -r -n 1 -ss

