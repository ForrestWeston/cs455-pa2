############################################################################
#######                    CptS 455 Project 2                        #######
#######    Team TCP: James Jessen, Adam Rodriguez, Forrest Weston    #######
#######                       README.txt                             #######
############################################################################

!Requires: Python 2.7.x to be installed to /usr/bin/python
Note: If you run the program with Python 3.x then the program will crash because string.split() is not available in Python 3.x

-To run a single router on the supplied testcases:
        python router [-p] test1 [A|B|C|D|E]
    or
        python router [-p] test2 [A|B|C|D|E|F|G|H]


The following sends all output to OUTPUT.txt
---------------------------------------------------
-To run all routers at once without poison reverse:
        run_test1.sh
    or
        run_test2.sh

-To run all routers at once with poison reverse:
        run_test1.sh -p
    or
        run_test2.sh -p

Note: after executing either script, to kill all the router processes just run:
        killrouters.sh

How to send L and P messages
----------------------------------------
-To change a link cost:
        changelink [test1|test2] r1 r2 c

-To print table of all routers:
        printtables [test1|test2]

-To print table of specific router:
        printtables [test1|test2] N