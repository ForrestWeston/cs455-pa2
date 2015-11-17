#!/bin/bash

# -p optional flag indicating to use Poisson Reverse
touch OUTPUT.txt

if [ $# -eq 1 ] && [ "$1" == "-p" ]; then
    python2.7 router -p test1 A >> OUTPUT.txt &
    python2.7 router -p test1 B >> OUTPUT.txt &
    python2.7 router -p test1 C >> OUTPUT.txt &
    python2.7 router -p test1 D >> OUTPUT.txt &
    python2.7 router -p test1 E >> OUTPUT.txt &
else
    python2.7 router test1 A >> OUTPUT.txt &
    python2.7 router test1 B >> OUTPUT.txt &
    python2.7 router test1 C >> OUTPUT.txt &
    python2.7 router test1 D >> OUTPUT.txt &
    python2.7 router test1 E >> OUTPUT.txt &
fi

wait
