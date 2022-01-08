#!/bin/bash

#system wide environment - valid for all users
cat /etc/environment	#show the path variable

#user variables are valid only for the correspondig user
echo $HOME		#/home/rafael
echo $PATH		#paths in which the system should search for command in the terminal without specifying a path
TEST=17			#name of variable TEST and 17 his value
echo $TEST		#see the content of the variable, avaliable only in this terminal
unset TEST		#delete the variable
export TEST=17	#variable now is avaliable in all shells, but if close the terminal, the variable is lost
printenv		#display all the environment variables
env 			# shortfall for environment
env -i 			# env with ignore environment variables
export TEST2=rafael
env -u TEST2 sh	#variable TEST2 are not avaliable
vi variables_env 		# create the file
source variables_env	# load the variables in this file



