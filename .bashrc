# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# needed in order to make gnat visible
#if [ -f /etc/profile ]; then
#    . /etc/profile
#fi
# This is not valid in case of Debian (which I'm using) - it is visible
# without it, to not mention that such file doesn't exist by default in Debian

export EDITOR='vim'
export TERM='xterm'

function set_history ()
{
  # don't put duplicate lines in the history. See bash(1) for more options
  # don't overwrite GNU Midnight Commander's setting of `ignorespace'.
  export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
  # ... or force ignoredups and ignorespace
  export HISTCONTROL=ignoreboth

  # append to the history file, don't overwrite it
  shopt -s histappend

  # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
}

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

function enable_colors ()
{
  # uncomment for a colored prompt, if the terminal has the capability; turned
  # off by default to not distract the user: the focus in a terminal window
  # should be on the output of commands, not on the prompt
  force_color_prompt=yes
  # colors are speeding up information processing

  if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	  # We have color support; assume it's compliant with Ecma-48
	  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	  # a case would tend to support setf rather than setaf.)
	    color_prompt=yes
    else
	    color_prompt=
    fi
  fi

  if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
  fi
  unset color_prompt force_color_prompt

  if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[1;36m\]\# \[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
  else
    PS1='\[\033[1;36m\]\# \[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
  fi
}

set_history
enable_colors

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# include private bin, if it exist
if [ -d $HOME/bin ]; then
    PATH=$HOME/bin:$PATH
fi

if [ -f $HOME/bin/keyboard.sh ] ; then
    . $HOME/bin/keyboard.sh
fi

#if [ -f $HOME/bin/.ssh-agent.sh ]; then
#	  . $HOME/bin/.ssh-agent.sh
#fi

DEBEMAIL=darkestkhan@gmail.com
DEBFULLNAME="darkestkhan"
export DEBEMAIL DEBFULLNAME 

# enable protection of system from myself...
ulimit -u 1024
