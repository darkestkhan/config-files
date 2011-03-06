#!/usr/bin/env bash
#-- This script is merging given pdf files in to one pdf file in given order
#-- Depends on ghostscript

#-- there are possible problems with filenames containing space(-s)

SPACE=' '
ARGS=
OUTPUT=$1
while [ $# -gt 1 ]
do
  shift 1 #-- first arg is output, all other args are pdfs to merge
  ARGS=${ARGS}${SPACE}$1
done 
gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=${OUTPUT} -dBATCH ${ARGS}

