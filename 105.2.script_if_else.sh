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

if [ $CALC = A]; then
	C=$(($X+$Y))
	echo "The result of the addition is: $C"

elif [ $CALC = S]; then
	C=$(($X-$Y))
	echo "The result of the substraction is: $C"

elif [ $CALC = M]; then
	C=$(($X*$Y))
	echo "The result of the Multiplication is: $C"

elif [ $CALC = D]; then
	C=$(($X/$Y))
	echo "The result of the Division is: $C"

else echo -e "You inform a wrong option. Try agains!"
	
fi
