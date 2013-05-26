#!/usr/bin/env dash
# TODO: Make sure that destination for symlink doesn't exist.
ln -s ${PWD}/.bashrc ${HOME}/.bashrc
ln -s ${PWD}/.profile ${HOME}/.profile
ln -s ${PWD}/.Xmodmap ${HOME}/.Xmodmap
# Vim cofiguration
ln -s ${PWD}.vimrc ${HOME}/.vimrc
ln -s ${PWD}/.vim.d ${HOME}/.vim.d
mkdir ${PWD}/.vim.d/view
# Fluxbox configuration
ln -s ${PWD}/.fluxbox ${HOME}/.fluxbox
ln -s ${PWD}/.config/bash ${XDG_CONFIG_HOME}/bash
# Install scripts
ln -s ${PWD}/bin ${HOME}/bin
