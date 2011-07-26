#!/usr/bin/env bash
#taken from Gregorio Espadas at http://gespadas.com/google-translate-terminal

if [ $# == 3 ]
then
  lynx -dump "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$3&langpair=$1|$2"|awk -F'"' '{print $6}'
else
  lynx -dump "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=en|pl"|awk -F'"' '{print $6}'
fi
