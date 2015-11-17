#!/bin/bash

# -p optional flag indicating to use Poisson Reverse
if [ -f OUTPUT.txt ]; then
    rm OUTPUT.txt
fi

touch OUTPUT.txt

if [ $# -eq 1 ] && [ "$1" == "-p" ]; then
    python2.7 -u router -p test1 A >> OUTPUT.txt 2>&1 &
    python2.7 -u router -p test1 B >> OUTPUT.txt 2>&1 &
    python2.7 -u router -p test1 C >> OUTPUT.txt 2>&1 &
    python2.7 -u router -p test1 D >> OUTPUT.txt 2>&1 &
    python2.7 -u router -p test1 E >> OUTPUT.txt 2>&1 &
else
    python2.7 -u router test1 A >> OUTPUT.txt 2>&1 &
    python2.7 -u router test1 B >> OUTPUT.txt 2>&1 &
    python2.7 -u router test1 C >> OUTPUT.txt 2>&1 &
    python2.7 -u router test1 D >> OUTPUT.txt 2>&1 &
    python2.7 -u router test1 E >> OUTPUT.txt 2>&1 &
fi