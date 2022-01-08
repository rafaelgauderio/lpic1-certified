#!/bin/bash

clear;

echo -e "What basic arithmetic would you like to perform?\n"
echo -e "[A]ddition"
echo -e "[S]ubstraction"
echo -e "[M]ultiplication"
echo -e "[D]ivision"

read CALC
echo -e "Inform the first number"
read X
echo -e "Inform the second number"
read Y

case "$CALC" in 
	A)
	C=$(($X+$Y))
	echo -e "The result of the addition is: $C"
;;
	S)
	C=$(($X+$Y))
	echo -e "The result of the substraction is: $C"
;;
	
	M)
	C=$(($X*$Y))
	echo -e "The result of the multiplication is: $C"
;;
	
	D)
	C=$(($X/$Y))
	echo -e "The result of the devision is: $C"
;;

	*)
	echo -e "You inform a wrong option. Try agains!"
	
		
esac



