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
alias gcc='gcc-4.6 -std=c99 -Wall'
alias g++='g++-4.6 -std=c++0x -Wall'
alias gfortran='gfortran-4.5 -std=f95'
alias ruby='ruby1.9.1 2>>${HOME}/.error_log/ruby'
alias emacs='emacs23 --no-window'
alias python='python3.2 2>>${HOME}/.error_log/python3.2'
alias vlc='vlc 2>>${HOME}/.error_log/vlc'
alias ghostscript='ghostscript -dSAFER'
alias gs='gs -dSAFER'
alias evince='evince 2>>${HOME}/.error_log/evince'
alias pcmanfm='pcmanfm 2>>${HOME}/.error_log/pcmanfm 1>>${HOME}/.error_log/pcmanfm'
# alias dir2ogv='ffmpeg2theora'
alias dir2ogv='dir2ogv.sh'
alias xterm='xterm -bg black -fg white -fs 16'

# various chmod
alias exe='chmod 700'
alias rw='chmod 600'
alias r='chmod 400'

# aptitude aliases
alias sapt='aptitude search'
alias ssapt='apt-get source'
alias vapt='aptitude versions'

# need root privileges
alias iapt='aptitude install'
