#!/bin/bash

INSTALL_PATH=${PWD}/app

if [ -d "$INSTALL_PATH" ]; then
  cd $INSTALL_PATH
  git pull
else
    git clone git@bitbucket.org:ecologic-ondemand/ecologic.se-blog.git $INSTALL_PATH
fi

docker run --name se-blog --rm -p 3001:80 -v=$INSTALL_PATH:/var/www/html se-blog
