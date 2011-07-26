#!/usr/bin/env dash
# make install script more readable
# make it not to hard link onto existing files
ln -b .bash_aliases $HOME/.bash_aliases
ln -b .bashrc $HOME/.bashrc
ln -b .profile $HOME/.profile
ln -b .Xmodmap $HOME/.Xmodmap
# mkdir $HOME/.vim.d
ln -b .vimrc $HOME/.vimrc
if [ -d $HOME/.vim.d ]
then
  ln -b .vim.d/ada_dict.gpr $HOME/.vim.d/ada_dict.gpr
else
  mkdir $HOME/.vim.d
  ln -b .vim.d/ada_dict.gpr $HOME/.vim.d/ada_dict.gpr
fi
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
# install scripts
# mkdir $HOME/bin
ln -b bin/.ssh-agent.sh $HOME/bin/.ssh-agent.sh
ln -b bin/compile.sh $HOME/bin/compile.sh
ln -b bin/keyboard.sh $HOME/bin/keyboard.sh
ln -b bin/icpufreq-info.sh $HOME/bin/icpufreq-info.sh
ln -b bin/vlc_flood_preventer.sh $HOME/bin/vlc_flood_preventer.sh
ln -b bin/merge_pdf.sh $HOME/bin/merge_pdf.sh
# files that need root privileges
ln -b bin/cpug.sh $HOME/bin/cpug.sh
ln -b bin/upt.sh $HOME/bin/upt.sh
ln -b bin/set_iptables.sh $HOME/bin/set_iptables.sh
