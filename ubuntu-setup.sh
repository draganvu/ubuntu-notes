#!/bin/bash
###########################################################################
#
# File: ubuntu-setup.sh
# Description: Sets up minimal ubuntu install with my software settings.
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# License: GPLv3+
#
###########################################################################

function important() {
    echo -e "\033[31m${1}\033[0m"
}

echo "This script will setups my post-install configurations for Ubuntu 16.04"
important "This is a personalized script."
important "Do not run this script without studying the code!"
echo
read -p "Do you want to continue? [y or n] " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    # configure git
    echo "Starting configure git..."
    git config --global user.name "draganvu"
    git config --global user.email "dvujovic@protonmail.ch"
    mkdir -p ~/github

    # install and configure fonts
    echo "starting to install fonts"
    sudo apt-get install fonts-freefont-otf
    sudo apt-get install fonts-unbuntu-font-family-console
    sudo apt-get install ttf-anonymous-pro
    sudo apt-get install fonts-hack-otf
    sudo apt-get install fonts-inconsolata
    echo "Caching fonts"
    fc-cache -f -v

    # configure folder for emacs backups and saves
    mkdir -p ~/.emacs-backups

    # install feh (for setting background wallpaper)
    sudo apt-get install feh

    # wip

    echo "Install finished successfully!"
else
    echo "Aborting install script execution"
fi

#END OF SCRIPT
