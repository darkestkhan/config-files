# ~/.bashrc: executed by bash(1) for non-login shells.

 export PS1='\h:\w\$ '
 umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls --group-directories-first -CF'
 
# Some more alias to avoid making mistakes:
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
 
# My own helpful aliase
 alias sapt='aptitude search'
 alias iapt='aptitude install'
 alias ssapt='apt-get source'
 alias vapt='aptitude versions'
 alias emacs='emacs23-nox'
 alias vi='emacs23-nox'
 alias vim='emacs23-nox'
 alias upt='/root/upt.sh'