#!/bin/bash

<<info 

this script will install the package 
 that you pass in argunments

eg. ./install_package.sh nginx
./install_package.sh docker.io
./install_package.sh unzip
info

echo "installing $1"

sudo apt-get install >/dev/null
sudo apt-get install $1 -y

echo "Installing completed"

