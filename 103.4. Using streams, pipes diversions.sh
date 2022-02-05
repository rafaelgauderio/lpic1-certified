#!/bin/bash

<<stdin
103.4. Using streams, pipes and diversions

		-> stdin    - standard input channel is number 0
		-> stdout   - standard output channel is number 1
		-> stderr   - standard error channel is number 2
		> 			- overwritten files
		>> 			- make a APPEND on the files, add aditional information
		|			- use the command as input from second command

stdin

ls > directory-contents.txt 				# result is direct to a the file directory-contents.txt
nl < log.txt 								# assign the file to the nl command
ls -la / > list.txt 						# list content of root should be copy to list.txt
cat list.txt
echo "" > log.txt 							# empty a log file
ls -la /usr/bin >> list.txt 				# write new thing on the file and don´t delete the old things
ls -la /usr/bin | wc -l 					# content of the directory is forwarded to wc -l command. Counted the number of the lines.
ls -la 1> list2.txt 						# 1 standard out channel. One is use by default
ls -la 2> list_error.txt 					# redirect channel 2 (errors channel)
ls -e 2> list_error.txt 					# ls -e do not exist. error channel will have a output
ls -la > list.txt 2> error.txt 				# outout to list.txt and standard error to error.txt
ls -la > list_both.txt 2>&1 				# save both stardard channel 1 and 2 to the same file
wc -l < lorem-ipsum.txt 					# stdin the file lorem-ipsum to the command wc -l
wc -l < lorem-ipsum.txt  					# (equals) wc -l 0< lorem-ipsum.txt
# wc -l << HEREDOC [enter] text [enter] text HEREDOC 		HEREDOC is in this case the word that close the command
VARIABLE=rafael
tr 'a-z' 'A-Z' <<< VARIABLE 				 # display RAFAEL(UPPERCASE) as the content of the variable VARIABLE

tee 										# read from stardard input and write to standard output and files
tee -a 										# tee --append
ls -la | tee list4.txt 						# show result on the screen and save on the file list4.txt

xargs 										# Additonal arguments (offen large filenames) can be added from standard
											# INPUT. xargs then runs the command multiple times in order to process all argumentos in standard input	
xargs -a 									# read itens from a file instead of the standard input											
find * .bak | xargs rm 						# remove all the *.bak file from directory
cat xargs-file.txt | xargs 					# xargs -a xargs-file.txt
xargs -a employees.txt | tr 'A-Z' 'a-z' > employees2.txt		# lowercase letters the content of the file employees.txt and create file employees2.txt


