#!/bin/bash
###########################################################################
#
# File: ubuntu-barebones.sh
# Description: Sets up minimal ubuntu install with barebones config.
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# License: GPLv3+
#
###########################################################################

function important() {
    echo -e "\033[31m${1}\033[0m"
}

echo "This script will setup a barebones configuration for Ubuntu 16.04"
important "This is a personalized script."
important "Do not run this script without studying the code!"
echo
read -p "Do you want to continue? [y or n] " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    # install graphic manager
    echo "Starting to run Ubuntu barebones setup script..."
    sudo apt-get update
    sudo apt-get install xserver-xorg

    # install x window manager starter
    sudo apt-get install xinit

    # install basic programs
    echo "Preparing to install programs..."
    sudo apt-get install ratpoison
    sudo apt-get install firefox
    sudo apt-get install thunar
    sudo apt-get install git

    # install network wifi connector
    sudo apt-get install wicd-gtk

    # install basic font
    echo "Preparing to install fonts..."
    sudo apt-get install ttf-dejavu

    # copy my .xinitrc file to root directory
    echo "Setting up .xinitrc..."
    cp -v ~/ubuntu-notes/config-files/.xinitrc ~/.xinitrc
    echo "Setting up .Xdefaults..."
    cp -v ~/ubuntu-notes/config-files/.Xdefaults ~/.Xdefaults
    echo "Setting up Ratpoison barbones config..."
    cp -v ~/ubuntu-notes/config-files/.ratpoisonrc ~/.ratpoisonrc

    echo "Install finished successfully! Please reboot your computer."
else
    echo "Aborting install script execution"
fi

#END OF SCRIPT
