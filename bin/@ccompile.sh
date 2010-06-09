#!/usr/bin/env bash
gcc-4.4 -O2 -std=c99 -m128bit-long-double -m64 -mssse3 -mfpmath=sse $1 -o $2