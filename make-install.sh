#!/usr/bin/env bash
ln -b .bashrc $HOME/.bashrc
ln -b .profile $HOME/.profile
ln -b .bash_aliases $HOME/.bash_aliases
ln -b .ssh-agent $HOME/bin/.ssh-agent
# mkdir $HOME/bin
ln -b bin/compile.sh $HOME/bin/compile.sh
ln -b bin/keyboard.sh $HOME/bin/keyboard.sh
# files that need root privileges
ln -b root/cpug.sh $HOME/bin/cpug.sh
ln -b root/upt.sh $HOME/bin/upt.sh