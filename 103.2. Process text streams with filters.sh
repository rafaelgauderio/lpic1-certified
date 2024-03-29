#!/bin/bash

		# 103.2. PROCESS TEXT STREAMS WITH FILTERS
 	
cat file1 file2 							# display the content of file1 e file2
cat file1 file2 > file3 					# put the result inside the file3
cat file3 									# display the content of file3
less largefile 								# use to display large files
 											# spacebar = go to the next page
 											# q = exit the less command
head  										# show the first 10 lines of the file
tail 										# show the last 10 lines of the file
head /etc/passwd
head -n 20 /etc/passwd 						# show the first 20 lines of the file
tail 30 /etc/passwd 						# show the last 30 lines of the file
tail -f /var/log/dpkg.log 					# display dinamically the new lines in the end of the file
 											# crtl + c = exit the tail command

zcat lorem-ipsum_1.gz 						# show the content of the file without descompress the file
 											# file is unpack in the background, output the content and packed again
# bzcat lorem-ipsum_1.bgz					# display the content of a file compress with bz
# xzcat lorem-ipsum_1.xz					# display the content of a file compress with xz

nl /etc/passwd 								# display file content with number lines
nl loren-ipsum
nl -b lorem-ipsum 							# the blank lines are also number
wc lorem-ipsum 								# number of lines, number of words, size of the file in bytes, file name
wc -w lorem-ipsum 							# show only the number of words
wc -l file 									# lines
od lorem-ipsum 								# display the contens of a file in a specific format (octal format is the default)
od -c lorem-ipsum 							# display in format ASCII characters
	# od -b -h -f -d -i 				- binay	hexadecimal	floating point signed decimal unsigned decimal

sort 										# sort lines of the text files (ordenar)
sort -b file-name.txt, 						# --ignore-leading-blanks
sort -f file-name.txt 						# --ignore-case
sort table.csv 								# sort just by the fisrt number of the column
sort -n table.csv 							# sort using the complete number
sort -t "," -k3 table.csv 					# sort using the third column, columns separetes by comma
uniq	 									# use to delete repeted lines
uniq uniq.txt 								# remove only the lines that are directly below
uniq -c uniq.txt 							# show how offen the correspondig lines occurred
uniq --group uniq.txt 						# separe by groups with a blank line inserted
man tr 										# translate. Replace or delete the content of a string
cat table.csv | tr "," ";" 					# replace commas with semicolon
cat table.csv | tr -d "," 					# delete the commas
cat table.csv | tr "a-z" "A-Z" 				# change all to uppercase
cat table.csv | tr "a-z" "A-Z" | tr "," ";"
cut -d "," -f 4 table.csv 					# cut the 4 column of the file and display only this column content, -f = file
cut -d "," -f 1,2,4 table.csv 				# cut and display the column 1,2 and 4 separate by comma
paste 										# mix the columns of files
paste file1.txt file2.txt 					# the files will be merge into one separated by a tap

sed 										# powerful text flow editor, user to filter and transform texts
sed 's/Employee/Lawyer/g' table.csv 	-	# replace the word Employee with the word Lawyer g=global == replace all words
 												# do not alter the original file 
sed -i's/Employee/Lawyer/g' table.csv - 	# option -i alter the original file

split 										# split a file into 1000 line segments, and the original file remains untouched
											# creating a set of new files with the name name as the original plus an added prexi. character "x" is the default prefix
split -b 1000 lorem-ipsum.txt 				# split the file in a 1000 bits files	

md5sum lorem-ipsum.txt 						# show the hash file of the file
 											# Use to compare values of files download from the internet to see if 
													# the file is damaged, incomplete or even compressed
md5sum lorem-ipsum.txt > li.hash.md5  		# save the output in the file li.hash.md5
md5sum -c li-hash.md5 						# compare the value and return FAILED or OK
sudo apt install hashalot
sha256sum lorem-ipsum.txt 					# hash number is longer, the encryption algorithm is significantly stronger
sha512sum lorem-ipsum.txt 					# 512 bit encryption


















