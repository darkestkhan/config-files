#!/usr/bin/env dash
# TODO: Make sure that destination for symlink doesn't exist.
# Bash confguration
ln -s ${PWD}/.bashrc ${HOME}/.bashrc
ln -s ${PWD}/.bash_logout ${HOME}/.bash_logout
ln -s ${PWD}/.profile ${HOME}/.profile
ln -s ${PWD}/.gpr_project_path ${HOME}/.gpr_project_path
# Miscellanous configuration files
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
