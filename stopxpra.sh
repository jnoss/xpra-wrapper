#!/bin/bash
displayFound=`xpra list 2>&1 | sed -n '/LIVE/{s/.*\:\(\d*\)/\1/p}' | sort -n | tail -n1`
while [ $displayFound ] 
  do xpra stop :$displayFound
    displayFound=`xpra list 2>&1 | sed -n '/LIVE/{s/.*\:\(\d*\)/\1/p}' | sort -n | tail -n1`
done
