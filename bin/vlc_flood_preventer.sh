#!/usr/bin/env bash
#-- The aim of this script is to automatically kill vlc when it allocates too
#-- much memory ( I have experiences of vlc flooding >2GB RAM + >3GB SWAP in
#-- less than 2-3 seconds, making system unresponsive; it is happenning mainly
#-- under serious system strain ( which is normal in my case ) )

#-- won't work correctly with more than one running vlc; did I ever run more
#-- than one instance of vlc ?
#-- maybe I should make it more generic?

#-- holds info about process
STRING=
#-- physical memory usage limit; 200MB for now
PMEMLIM=200000

#-- extract info about process from args ( passing string containing spaces as
#-- argument is causing to be treated as many arguments )
extract_and_parse ( ) {
  if [ $# -ne 3 ]
  then
    return 0
  else
    if [ $3 -gt ${PMEMLIM} ]
    then
      kill -9 $1
      return 1
    else
      return 0
    fi
  fi
}

while [ 1 ]
do
  #-- get only pid, name and physical memory usage of FIRST occurrence of vlc
  #-- ( may or may not work in systems with trully randomized PIDS )
  STRING=$(ps -eo pid,cmd,rss | grep vlc | head -n 1)
  extract_and_parse ${STRING}
  if [ $? -eq 1 ]
  then
    echo 'vlc was killed to prevent death of system by memory flood' >/dev/tty
  fi
  sleep 1
done

