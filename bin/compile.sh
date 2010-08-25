#!/usr/bin/env bash
gcc-4.4 -O3 -std=gnu99 -fomit-frame-pointer -pipe -j2 -m128bit-long-double -m64 -mssse3 -mfpmath=sse -march=core2 $1 -o $2
