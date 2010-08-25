# handy aliases + color support 
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
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

# private aliases
alias ruby='ruby18'
alias emacs='emacs-23 --no-window'
alias python='python2.6'
alias vim='emacs-23 --no-window'
alias vi='emacs-23 --no-window'
alias exe='chmod 700'
alias rw='chmod 600'
alias sapt='equo search'
#alias ssapt='apt-get source'
#alias vapt='aptitude versions'

# need root privileges
alias iapt='equo install'
