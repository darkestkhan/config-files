#!/usr/bin/env bash
rm $HOME/.bashrc
ln -L .bashrc $HOME/.bashrc
rm $HOME/.profile
ln -L .profile $HOME/.profile
# mkdir $HOME/bin
ln -s bin/compile.sh $HOME/bin/compile.sh
ln -s bin/keyboard.sh $HOME/bin/keyboard.sh
# @cpug.sh