#!/usr/bin/env dash

OBJ=
STD=gnu99
CPU=core2
MACHINE=m64
THREADS=j2
OPT=O3
SSE=mssse3
LONGDOUBLE=m128bit-long-double
#if [ $3 = c ] ; then
#    OBJ=C
#fi

case $1 in
    *.c) gcc-4.4 -$OPT -std=$STD -fomit-frame-pointer -pipe -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -mfpmath=sse -march=$CPU $1 -o $2 ;;
    *.h) gcc-4.4 -$OPT -std=$STD -fomit-frame-pointer -pipe -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -mfpmath=sse -march=$CPU $1 -o $2 ;;
    *.cpp) gcc-4.4 -$OPT -std=$STD -fomit-frame-pointer -pipe -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -mfpmath=sse -march=$CPU $1 -o $2 ;;
    *.hpp) gcc-4.4 -$OPT -std=$STD -fomit-frame-pointer -pipe -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -mfpmath=sse -march=$CPU $1 -o $2 ;;
    *.ads) gnatmake -$OPT $1 ;;
    *.adb) gnatmake -$OPT $1 ;;
    *.hs) ghc -$OPT $1 -o $2 ;;
    *.lhs) ghc -$OPT $1 -o $2 ;;
    *.f90) gfortran -$OPT $1 -o $2 ;;
    *.f77) gfortran -$OPT $1 -o $2 ;;
    *.f95) gfortran -$OPT $1 -o $2 ;;
#    *.cl) sbcl -- not yet ... ;;
    *.s) gas -$OPT $1 -o $2 ;;
    *) echo "wtf?" ;;
esac