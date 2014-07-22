#!/bin/bash
# To install this, copy paste this into a fresh Fedora MINIMUM installation:
#
#
# Install required X11 packages:
yum install -y xorg-x11-xinit xorg-x11-server-Xorg xorg-x11-drv-* xorg-x11-xinit xorg-x11-server-common
# Install required libs:
yum install -y xterm gtk2.x86_64 GConf2.x86_64 git wget alsa-lib.x86_64


# Download and extract Node Webkit:
wget http://dl.node-webkit.org/v0.10.0/node-webkit-v0.10.0-linux-x64.tar.gz
tar -zxvf node-webkit-v0.10.0-linux-x64.tar.gz
rm -rf node-webkit-v0.10.0-linux-x64.tar.gz
mv node-webkit-v0.10.0-linux-x64 node-webkit


# Fix node webkit dependency on udev
cd node-webkit
sed -i 's/udev\.so\.0/udev.so.1/g' nw


# Get the basic Node Webkit site:
cd
git clone https://github.com/qrpike/base-node-webkit-app.git


# Should be all good now:
clear
echo "All Done - To run the app type the following:"
echo "./base-node-webkit-app/runApp.sh"
