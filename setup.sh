#! /bin/bash

echo -e "\n\n\e[33mUpdating Termux...\n\e[32m"
apt update
echo -e "\n\n\e[33mUpgrading Termux...\n\e[32m"
apt upgrade
echo -e "\n\n\e[33mInstalling Figlet...\n\e[32m"
apt install figlet
echo -e "\n\n\e[33mInstalling Python...\n\e[32m"
apt install python
echo -e "\n\n\e[33mInstalling Lolcat...\n\e[32m"
pip install lolcat
echo -e "\n\n\e[33mInstalling ffmpeg...\n\e[32m"
pkg install -y ffmpeg

chmod +x ~/Video-To-Audio-Convertor/V2A-Convertor.sh

echo -e "\n\n\e[33mReady To Use :) \n\e[0m"
