#!/usr/bin/env dash

OBJ=
CSTD=gnu99
CPU=core2
MACHINE=m64
THREADS=j2
OPT=O2
SSE=mssse3
LONGDOUBLE=m128bit-long-double
FPM='-fomit-frame-pointer -pipe -mfpmath=sse'

case $1 in
    *.c) gcc-4.4 -$OPT -std=$CSTD $FPM -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU $1 -o $2 ;;
    *.h) gcc-4.4 -$OPT -std=$CSTD $FPM -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU $1 -o $2 ;;
    *.cpp) gcc-4.4 -$OPT -std=$CSTD $FPM -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU $1 -o $2 ;;
    *.hpp) gcc-4.4 -$OPT -std=$CSTD $FPM -$THREADS -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU $1 -o $2 ;;
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