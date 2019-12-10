#!/usr/bin/env bash

# Author: Let's FOSS
# Shell script to fix disabled edit button in Shutter
# Woks on Ubuntu and Ubuntu Based Distros
# Github: https://github.com/letsfoss/Fix-Disabled-Edit-Option-In-Shutter

# Install Flux
FixShutterEdit (){
    printf "Fixing Shutter Edit Button\n"
    printf "You just need to type your Password one time. If you're not running as root\n"
    printf "This script will download and install additional packages.\nWhich is completly safe\n"
    sudo apt-get install wget -y
    wget https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas-common_1.0.0-1_all.deb
    sudo dpkg -i libgoocanvas-common_1.0.0-1_all.deb
    wget https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas3_1.0.0-1_amd64.deb
    sudo dpkg -i libgoocanvas3_1.0.0-1_amd64.deb; sudo apt-get -f install
    wget https://launchpad.net/ubuntu/+archive/primary/+files/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
    sudo dpkg -i libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb; sudo apt-get -f install
	killall shutter
    printf "\nRemoving downloaded files.\n"
    rm -rf libgoocanvas-common_1.0.0-1_all.deb
    rm -rf libgoocanvas3_1.0.0-1_amd64.deb
    rm -rf libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
    printf "Running autoremove"
    sudo apt autoremove -y
    printf "\nEdit button fixed\n"
    printf "\nOpen and Check Shutter. Bye Bye\n"
    printf "\n\n"
    printf "Visit https://letsfoss.com for more linux tutorials\n"
     printf "\n\n"
}

FixShutterEdit
