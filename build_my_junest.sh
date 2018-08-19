#!/usr/bin/env bash

sudo pacman -Sy git --noconfirm
git clone https://github.com/4O4/junest-builder.git
cd junest-builder/
sudo bash -x ./setup_builder.sh
sudo su builder -c 'bash -x /home/builder/build_image.sh' && sudo cp -rf /home/builder/junest-x86_64.tar.gz /vagrant