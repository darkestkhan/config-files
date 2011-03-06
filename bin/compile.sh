#!/usr/bin/env dash

OBJ=
CSTD=gnu99
CPU=core2
MACHINE=m64
THREADS=
OPT=O3
SSE=mssse3
LONGDOUBLE=m128bit-long-double
FPM='-fomit-frame-pointer -pipe -mfpmath=sse -ftree-vectorize'

if [ $2 = '' ]; then
    $2 = "a.out"
fi

temp=$2
$1=$2
$2=${temp}

case $1 in
    *.c) gcc-4.5 -$OPT -std=$CSTD $FPM -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU -o $1 $2 ;;
    *.h) gcc-4.5 -$OPT -std=$CSTD $FPM -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU -o $1 $2 ;;
    *.cpp) gcc-4.5 -$OPT -std=$CSTD $FPM -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU -o $1 $2 ;;
    *.hpp) gcc-4.5 -$OPT -std=$CSTD $FPM -$LONGDOUBLE -$MACHINE -$SSE -march=$CPU -o $1 $2 ;;
    *.ads) gnatmake -$OPT $1 ;;
    *.adb) gnatmake -$OPT $1 ;;
    *.hs) ghc -$OPT -o $1 $2 ;;
    *.lhs) ghc -$OPT -o $1 $2 ;;
    *.f90) gfortran -$OPT -o $1 $2 ;;
    *.f77) gfortran -$OPT -o $1 $2 ;;
    *.f95) gfortran -$OPT -o $1 $2 ;;
#    *.cl) sbcl -- not yet ... ;;
    *.s) gas -$OPT -o $1 $2 ;;
    *.cs) gmcs -o $1 $2;;
    *) echo "wtf?" ;;
esac
