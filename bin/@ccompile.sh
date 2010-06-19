#!/usr/bin/env bash
gcc-4.4 -O3 -m128bit-long-double -m64 -mssse3 -mfpmath=sse -march=native $1 -o $2