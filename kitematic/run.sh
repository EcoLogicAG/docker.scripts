#!/bin/bash

sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install nodejs
sudo aptitude install libgtk2.0-0 libgconf-2-4 libasound2 libxtst6
git clone https://github.com/zedtux/kitematic.git
cd kitematic
git checkout linux-support
git pull
npm install
npm start
