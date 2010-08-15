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
alias ruby='ruby1.9.1'
alias emacs='emacs23-nox'
alias python='python3.1'
alias vim='emacs23-nox'
alias vi='emacs23-nox'
alias exe='chmod 700'
alias rw='chmod 600'
alias sapt='aptitude search'
alias ssapt='apt-get source'
alias vapt='aptitude versions'

# need root privileges
alias iapt='aptitude install'