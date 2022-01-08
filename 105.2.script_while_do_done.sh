#!/bin/bash

NUMBER=0

while [$ NUMBER -le 20 ]
do
	echo $NUMBER
	NUMBER=$(($NUMBER+1))
done

echo "Using for"

for((i=0; i<21; i++));
	do
		echo $i
	done
	
echo "Using for in a different way"	
for i in {1..20}
	do
		echo $i
	done
	
echo "Using the sec command"

seq 10 30 2
# will display to 10 until 30 ins step of 2



	

