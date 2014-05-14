#!/bin/bash
displayFound=`xpra list 2>&1 | sed -n '/LIVE/{s/.*\:\(\d*\)/\1/p}' | sort -n | tail -n1`
if [ $displayFound ] 
  then let displayNum="$displayFound"
    xpra attach :$displayNum
  else echo 'No current xpra session found'
    exit 1
fi
