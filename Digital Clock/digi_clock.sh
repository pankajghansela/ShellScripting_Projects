#! /bin/bash

#include the code for green colour
GREEN=$'\e[1;32m'


#run an infinite while loop that breaks with ctrl+c or closing the terminal
#clear the screen > print the date (formatted to show only the time > Sleep for 1 s

while true
do
	clear
	echo $GREEN $(date +%T)
	sleep 1s
done

