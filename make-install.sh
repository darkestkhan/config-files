#!/usr/bin/env bash
rm ~/.bashrc
ln -s .bashrc ~/.bashrc
rm ~/.profile
ln -s .profile ~/.profile
mkdir ~/bin
ln -s bin/compile.sh ~/bin/compile.sh
ln -s bin/keyboard.sh ~/bin/keyboard.sh
# @cpug.sh