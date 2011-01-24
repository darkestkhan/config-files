#!/usr/bin/env dash
ln -b .bash_aliases $HOME/.bash_aliases
ln -b .bashrc $HOME/.bashrc
ln -b .profile $HOME/.profile
ln -b .Xmodmap $HOME/.Xmodmap
# mkdir $HOME/.fluxbox
# mkdir $HOME/.fluxbox/styles
# mkdir $HOME/.fluxbox/styles/darkness
ln -b .fluxbox/styles/darkness/theme.cfg $HOME/.fluxbox/styles/darkness/theme.cfg
ln -b .fluxbox/apps $HOME/.fluxbox/apps
ln -b .fluxbox/init $HOME/.fluxbox/init
ln -b .fluxbox/keys $HOME/.fluxbox/keys
ln -b .fluxbox/lastwallpaper $HOME/.fluxbox/lastwallpaper
ln -b .fluxbox/menu $HOME/.fluxbox/menu
ln -b .fluxbox/overlay $HOME/.fluxbox/overlay
ln -b .fluxbox/slitlist $HOME/.fluxbox/slitlist
ln -b .fluxbox/startup $HOME/.fluxbox/startup
ln -b .fluxbox/windowmenu $HOME/.fluxbox/windowmenu
# mkdir $HOME/.vim.d
ln -b .vimrc $HOME/.vimrc
# mkdir $HOME/bin
ln -b bin/.ssh-agent.sh $HOME/bin/.ssh-agent.sh
ln -b bin/compile.sh $HOME/bin/compile.sh
ln -b bin/keyboard.sh $HOME/bin/keyboard.sh
ln -b bin/icpufreq-info.sh $HOME/bin/icpufreq-info.sh
# files that need root privileges
ln -b root/cpug.sh $HOME/bin/cpug.sh
ln -b root/upt.sh $HOME/bin/upt.sh
