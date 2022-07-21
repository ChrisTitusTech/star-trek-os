#!/bin/bash

mkdir lcars-build
cd lcars-build
wget http://ftp.de.debian.org/debian/pool/main/p/python-posix-ipc/python3-posix-ipc_0.9.8-3+b1_amd64.deb
wget https://github.com/lcarsde/lcarswm/releases/download/22.1/lcarswm_22.1_amd64.deb
wget https://github.com/lcarsde/menu/releases/download/22.1/lcarsde-app-menu_22.1_amd64.deb
wget https://github.com/lcarsde/status-bar/releases/download/22.2/status-bar_22.2_amd64.deb
wget https://github.com/lcarsde/application-starter/releases/download/21.1/lcarsde-application-starter_21.1_amd64.deb
wget https://github.com/lcarsde/logout/releases/download/20.1/lcarsde-logout_20.1_amd64.deb
sudo apt-get -f install
sudo dpkg -i *.deb
mkdir ~/.config/lcarde/
cp /etc/lcarde/* ~/.config/lcarde/
