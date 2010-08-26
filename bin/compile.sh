#!/usr/bin/env bash

case $1 in
    *.c) gcc-4.4 -O3 -std=gnu99 -fomit-frame-pointer -pipe -j2 -m128bit-long-double -m64 -mssse3 -mfpmath=sse -march=core2 $1 -o $2 ;;
    *.h) gcc-4.4 -O3 -std=gnu99 -fomit-frame-pointer -pipe -j2 -m128bit-long-double -m64 -mssse3 -mfpmath=sse -march=core2 $1 -o $2 ;;
    *.cpp) gcc-4.4 -O3 -std=gnu99 -fomit-frame-pointer -pipe -j2 -m128bit-long-double -m64 -mssse3 -mfpmath=sse -march=core2 $1 -o $2 ;;
    *.hpp) gcc-4.4 -O3 -std=gnu99 -fomit-frame-pointer -pipe -j2 -m128bit-long-double -m64 -mssse3 -mfpmath=sse -march=core2 $1 -o $2 ;;
    *.ads) gnatmake -O3 $1 ;;
    *.adb) gnatmake -O3 $1 ;;
    *.hs) ghc -O3 $1 -o $2 ;;
    *.lhs) ghc -O3 $1 -o $2 ;;
    *) echo "wtf?" ;;
esac