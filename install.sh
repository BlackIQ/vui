#!/bin/bash

# Check that user is admin
if [ $(whoami) != "root" ]; then
  echo "This script must be run as root"
  exit 1
fi

# Setting up the env
echo "Setting up the env"

mkdir -p /apps
cd /apps

# Cloning VUI
echo "Cloning VUI"

git clone --recursive https://github.com/BlackIQ/vui

cd vui

# Making the app
echo "Making the app"

make