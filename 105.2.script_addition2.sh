#!/bin/bash

A=5
B=12
C=$(($A+$B))
echo "The sum of A and B is: $C"


echo "Use informing the parameters"
echo "Please enter the first number: "
read A
echo "Please enter the second number: "
read B
echo "The result is: $(($A+$B))"

