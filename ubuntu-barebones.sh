#!/bin/bash

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

# install dejavu fonts
echo "Preparing to install fonts..."
sudo apt-get install ttf-dejavu

# copy my .xinitrc file to root directory
echo "Setting up .xinitrc..."
cp -v ~/ubuntu-notes/config-files/.xinitrc ~/.xinitrc
echo "Setting up .Xdefaults..."
cp -v ~/ubuntu-notes/config-files/.Xdefaults ~/.Xdefaults
echo "Setting up Ratpoison barbones config..."
cp -v ~/ubuntu-notes/config-files/.ratpoisonrc ~/.ratpoisonrc

exit
