#!/bin/bash
displayFound=`ps u -C xpra 2>&1 | sed -n '/xpra/{s/.*\:\(\d*\)/\1/p}' | sort -n | tail -n1`
if [ $displayFound ] 
  then let displayNum="$displayFound + 1"
  else let displayNum=130
fi
xpra start :$displayNum
sleep 3
DISPLAY=:$displayNum xterm &
xpra attach :$displayNum
