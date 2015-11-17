#!/bin/bash

# -p optional flag indicating to use Poisson Reverse
touch OUTPUT.txt

python2.7 router test1 A >> OUTPUT.txt &
python2.7 router test1 B >> OUTPUT.txt &
python2.7 router test1 C >> OUTPUT.txt &
python2.7 router test1 D >> OUTPUT.txt &
python2.7 router test1 E >> OUTPUT.txt &

wait
