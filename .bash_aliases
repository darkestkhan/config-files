# handy aliases + color support 
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --group-directories-first --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls --group-directories-first -l'
alias la='ls --group-directories-first -A'
alias l='ls --group-directories-first -CF'

if [ -f /usr/bin/colordiff ]; then
  alias diff='colordiff'
fi

# private aliases
alias gcc='gcc-4.5 -std=c99'
alias gfortran='gfortran-4.5 -std=f95'
alias ruby='ruby1.9.1'
alias emacs='emacs23 --no-window'
alias python='python3.2'
#alias vim='emacs23 --no-window'
#alias vi='emacs23 --no-window'
alias exe='chmod 700'
alias rw='chmod 600'
alias sapt='aptitude search'
alias ssapt='apt-get source'
alias vapt='aptitude versions'

# need root privileges
alias iapt='aptitude install'
