#!/bin/bash
 
	# -> 104.7. FIND SYSTEM FILES AND PUT FILES IN THE RIGHT PLACE

find 								# search for files in a directory hierarchy
find [options] [file] 	
find /home/rafael -iname file_name 	# ignore case sensitive

locate								# no path has to be specified. Locate use an index database
									# find files by name
sudo apt install mlocate
locate file.txt
sudo updatedb 						# update the database of locate command
vi /etc/updatedb.conf 	
locate -i File.txt 					# ignore case sensitiveq

whereis 							# locate the binary, source and manual files for a command
whereis lorem-ipsum.txt 			# display nothing (because is not a comand)
whereis chmod 						# display the path to binary file /usr/bin/chmod
whereis -b chmod 					# binaries only 
whereis -m chmod 					# manuals 	/usr/share/man/man1/chmod.1.gz
whereis -s init 					# sources 	/usr/src/linux.../init

which 								# locate a command
which -a 							# print all matching pathnames of each argument
which 								# look only for EXECUTABLE PROGRAMS executable programs. look content of the path variable
echo $PATH 							# corresponding path in which searches for executables files
which chmod
which kill

type 								# display if it is a file, alias or functions
type -t ls 							# alias to ls --color-auto
type -t cp 							# file 



	