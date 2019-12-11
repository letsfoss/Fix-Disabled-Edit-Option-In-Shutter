#!/usr/bin/env bash

# Author: Let's FOSS
# Shell script to fix disabled edit button in Shutter
# Woks on Ubuntu and Ubuntu Based Distros
# Github: https://github.com/letsfoss/Fix-Disabled-Edit-Option-In-Shutter

# Install Flux
FixShutterEdit (){
    printf "\n\U2692  Fixing Shutter Edit Button\n\n\U1F511 You just need to type your Password one time. If you're not running as root\n\n\U1F197 This script will download and install additional packages.\n\n\U1F6E1  Which is completly safe\n\n\U1F622 Don't worry about broken packages. Everything will be fixed automatically\n\n\U231A Time Consuming Process. Thanks for your patience\n\n"
    sleep 5
    printf "\n\U1F680 Starting Installation\n\n"
    sleep 3
    sudo apt-get install wget -y
    wget -c https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas-common_1.0.0-1_all.deb
    sudo dpkg -i libgoocanvas-common_1.0.0-1_all.deb
    wget -c https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas3_1.0.0-1_amd64.deb
    sudo dpkg -i libgoocanvas3_1.0.0-1_amd64.deb
    sudo apt-get -f install
    wget -c https://launchpad.net/ubuntu/+archive/primary/+files/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
    sudo dpkg -i libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
    sudo apt-get -f install
    sleep 3
    printf "\nClosing all instance of Shutter\n"
    sudo killall shutter
    sleep 3
    printf "\nRemoving downloaded files.\n"
    sudo rm -rf libgoocanvas-common_1.0.0-1_all.deb
    sudo rm -rf libgoocanvas3_1.0.0-1_amd64.deb
    sudo rm -rf libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
    sleep 3
    printf "\nAutoremove to Fix Broken Packages"
    sudo apt autoremove -y
    sleep 3
    printf "\n\n\U1F984 Edit button fixed\n\n\U1F9D0 Open and Check Shutter. Bye Bye\n\n\n\U1F449 Visit https://letsfoss.com for more linux tutorials\n\n\n"
    printf "\nAuto Exiting..\n\n"
    rm -rf FixShutterEdit.sh
    sleep 3
    exit
}

FixShutterEdit
