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

    # configure sound
    sudo apt-get install alsa-base
    alsactl init

    # install and configure fonts
    echo "starting to install fonts"
    sudo apt-get install fonts-freefont-otf
    sudo apt-get install fonts-unbuntu-font-family-console
    sudo apt-get install ttf-anonymous-pro
    sudo apt-get install fonts-hack-otf
    sudo apt-get install fonts-inconsolata
    sudo apt-get install fonts-font-awesome
    echo "Caching fonts"
    fc-cache -f -v

    # install icons and themes
    sudo apt-get install faenza-icon-theme
    sudo apt-get install gnome-themes-standard

    # configure folder for emacs backups and saves
    mkdir -p ~/.emacs-backups

    # configure folders
    mkdir -p ~/Documents
    mkdir -p ~/Music
    mkdir -p ~/Pictures
    mkdir -p ~/Videos
    mkdir -p ~/Downloads

    # install feh (for setting background wallpaper)
    sudo apt-get install feh

    # install music player
    sudo apt-get install moc

    # install utils
    sudo apt-get install htop

    # wip

    echo "Install finished successfully!"
else
    echo "Aborting install script execution"
fi

#END OF SCRIPT
