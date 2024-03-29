#!/bin/bash

	# 103.3 BASIC FILE MANAGEMENT
	
man cd  								# change directory
cd /home/rafael/Downloads		 		# absolute path
cd .. 									# 	step back in the directory tree	
pwd 									# /home/rafael
cd Downloads/	 						# switch relatively to directories	
cd ../../../bin 						# three steps back and then go to bin directory
cd ~ 	 								# change to the home directory
man cp 	 								# copy files and directories. informe source and destinations
cp ./skypeforlinux-64.deb /tmp 			# copy from current directory to /tmp	
cp /tmp/skypeforlinux-64.deb . 			# copy from tmp to current directory the we are
cp -i /source /destination 				# -i ask for confirmation (interactive)
cp -p 									# have the timestamp at the same time as before, not the actual timestamp
										# copy with attribute information, as well as owner, permission, group, etc
cp -r /tmp . 							# recursive. Copy the complete directory /tmp to the current directory
man mv 									# move or rename files. source file is deleted
man touch 								# change file timestamps, create files also. timestamps also change when we change the
											# file, but do not change when the file is just open or check it out
touch file_name 						# create file, under linux we do not have to assign a file extension
touch -t 202104301230.20 file 			# YEARMOUNTHDAYTIME.SECOND file_name
man file 								# determinate file type. Tests each argument in an attemp to classify it
file file_name 							# empty file, ASCII text or another description
ls -at									# -a =list also hidden files, -t= sort by modification time with most recent first,
ls -r 									# -r = --reverse
ls -lh 									# h = human readable, l=long details list
ll 	 									# alias (ls -alF) a = all, l = long details list,
											#	F = differentiate files and directories, it will append / to directory entries
man mkdir 								# make directory, -p --parents, -v --verbose
mkdir test1 test2 test3 				# create several directories at the same time
rmdir 									# remove EMPTY directories
rmdir -p test5/test6/test7				# -p --parents (delete sub folders also)
rm -r directory_name 					# remove directories with files and subfolders 
rm -ivf file_name						# -i --interactive, -v --verbose, -f --force
rm -rf / 								# delete everything from root directory. This command is not allowed
rm -rf ./test1 							# deletes the directory test1 in the directory which we are current located
man find 								# search for files in a directory hierarchy
find -name file.txt 					# search file by name
find -name *.log 						# search all files with file extension .log
sudo find /var -name *.log 				# search all files with file extension .log in also /var directory
sudo find / -maxdepth 4 -name *.log 	# search all in root directory with 3 maxdepth subfolders + 1 depth to the file
dd 										# dislk dump. Use to copy entire disk partitions or files bit by bit.
dd if=/dev/sda1 of=/dev/sdb1 	    	# if=input file, of=output file. Create a exact copy of the partition
dd if=file.txt of=file2.txt 			# copy file bit by bit
				# bs count 				# bs = how big block should be, count = define how many blokcks
sudo dd if=dev/sda1 of=backup_bootloarer bs=512 count=1

man tar 								# archiving tool, abbreviation for tape archive. Pack, unpack several files together
tar -cf file.tar file1 file2 			# c=create f=file name_file.tar files that will be pack. Option f always mentioned last
tar -tf file.tar 						# display what files the archive contains
tar -rf file.tar file3            		# add the file3 to the file.tar archive
tar -cf file.tar ./* 					# Pack all the files and subfolders from current directory in the file file.tar
tar -xvf file2.tar 						# x = extract que file tar, v=verbose, f=file
tar -czvf file3.tar.gz file1 file.txt	# z= gzip compression, choose always the extension .tar.gz
tar -tzf file3.tar.gz             		# display que content of the compressed file with gzip
tar -xzvf file3.tar.giz 				# extrated the compressed file
tar -cvjf file4.tar.bz2 file1 file.txt 	# j= b2zip compressed	archive	
tar -cvJf file4.tar.xz file1 file.txt  # J= xz compressed archive	

cpio -o 								# copy in copy out. similar to tar. Can be compression or not. -o = copy-out
cpio -i									# copy files to and from archives and directories. -i = copy-in
# options cpio -o, --create, -i --extract -p, --pass-through , -t = show content
ls | cpio -o > content.cpio.txt       	# copy the files in the packed file content.cpio.txt
cpio -it < content.cpio.txt 			# show the content of and unpacked content.cpio.txt file
find . | cpio -o > packed.cpio 			# find everything in the current folder and send to cpio int copy out mode
find . | cpio -pd /tmp/test 			# copy found files by copy pass mode. -d option ensures that /tmp/test directory is create if doesn´t already exits.
find . | cpio -pd /tmp/text 			# (equals)	 cp -r * /tmp/test

gzip file1 								# create a compressed file file1.gz, original file is deleted after compressed
gzip file1 file2 						# compress the two file individually, not grouping. file1.gz file2.gz
gzip -k file.txt 						# -k --keep = do not delete input files during compressing or decompression
gzip 									# reduces the size of the named files using Lempel-ziv coding
# options gzip -l --list, -q --quiet, -r --recursive, -c --stdout, -f --force, -k --keep, -d --decompress --uncompress
gzip -dk file.txt.gz 					# decompress and keep the compress file
gunzip file35.gz 						# decompress files, the same as using -d option

bzip2 file1 							# create a compress file1.bz2
bzip2 -dk file1.bz2 					# decompress file1.bz2
bunzip2 -k file1.bz2 					# the same as bzip2 -d

xz -k file1								# create a compress file1.xz, -k --keep
xz -d file1.xz 							# decompress file.xz

ls *.txt 								# list all files with txt extention
ls test* 								# list all files the start with test
ls text??								# question mark, any character, but one ? for each character
ls [tT]est*.csv 						# Test.csv	test.csv	test1.csv	test45.csv
ls test[^1-2].txt 						# test1.txt and test2.txt are excluded of the show list
ls {table,chair}* 						# table.txt 	chair.csv
ls {table,test}[^1,2]*.[Tt]? 			# list files with the word table or test, but without 1
    		 							# or 2 in the filename. Extention should start with capital T ou small t. 
										# Second character of the extention with X or x and a third other character include
    
























										


 	
