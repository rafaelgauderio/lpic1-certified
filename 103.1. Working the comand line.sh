#!/bin/bash

	# 103.1. WORKING ON THE COMMAND LINE


pwd 							# print working directory
uname 							# print informations of the system, kernel information
uname -a						# all informations of the system
dmesg 							# print or control the ring buffer
ll /usr/share/man 				# where man page are locade	
sudo apt install manpages-dev
man chmod
	# chmod 					- change files mode bits
	# chmod, fchmod, fchmodat 	- change permissions of a file
history 						# see the last entries
echo 							# display a line of text
echo $HISTFILE 					# /home/rafael/.bash_history
cat .bash_history 				# show the content of the file
cat $HISTFILE 					# show the contet of the histfile variable
echo -e 'test\n test' 			# convert the \n on a line break
echo -e 						# enable interpretation of backlash espapes

		# bash = abbreviation for Born Again Shell
		# Environment variable = contain settings for how the best environment is configured with a command
env 							# display current environment variable and their values
echo $PATH 						# display the path variable
echo $SHELL 					# /bin/bash = value of the variable
echo $HOME 						# /home/rafael
echo $HISTFILE 					# 1000 - memorize 1000 comands
echo $HISTFILESIZE 				# 2000	
set 							# set your on variables or chance settings on the shell
set -x 							# print commands and their arguments as they are executed (debud mode)
VARIABLE0815=test05				# set a nem variable and it value
echo $VARIABLE0815 				# test05
unset VARIABLE0815 				# delete tha variable
bash 							# starting a second bash
exit 							# get out of the second bash
export $VARIABLE 				# it designates specified variable and functions to be passed to child processes

<<Manpages
		-> Manpages
			NUMBER			TYPE
			1 				executable programs or shell commands
			2 				system calls (kernel funcions)
			3 				library call (functions in program libraries)
			4 				special files (usually in/dev)
			5 				file formats and conventions
			6 				games
			7 				varius (including macro packages and conventions)
			8 				system administration commands (usually only root)
			9 				kernel routines

Manpages




	