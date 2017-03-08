#!/bin/bash

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

exit
