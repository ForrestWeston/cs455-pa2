#!/bin/bash

# -p optional flag indicating to use Poisson Reverse
if [ -f OUTPUT.txt ]; then
    rm OUTPUT.txt
fi

touch OUTPUT.txt

if [ $# -eq 1 ] && [ "$1" == "-p" ]; then
    python2.7 -u router -p test2 A >> OUTPUT.txt &
    python2.7 -u router -p test2 B >> OUTPUT.txt &
    python2.7 -u router -p test2 C >> OUTPUT.txt &
    python2.7 -u router -p test2 D >> OUTPUT.txt &
    python2.7 -u router -p test2 E >> OUTPUT.txt &
    python2.7 -u router -p test2 F >> OUTPUT.txt &
    python2.7 -u router -p test2 G >> OUTPUT.txt &
    python2.7 -u router -p test2 H >> OUTPUT.txt &
else
    python2.7 -u router test2 A >> OUTPUT.txt &
    python2.7 -u router test2 B >> OUTPUT.txt &
    python2.7 -u router test2 C >> OUTPUT.txt &
    python2.7 -u router test2 D >> OUTPUT.txt &
    python2.7 -u router test2 E >> OUTPUT.txt &
    python2.7 -u router test2 F >> OUTPUT.txt &
    python2.7 -u router test2 G >> OUTPUT.txt &
    python2.7 -u router test2 H >> OUTPUT.txt &
fi