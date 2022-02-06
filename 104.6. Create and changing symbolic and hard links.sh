#!/bin/bash

<<links
> 104.6. Create and changing symbolic and hard links
	
	create hard link == phisical links
		-> both files have the same content, hard link is a copy
		-> if the content of one file is changed, the other also is changed
		-> the only way to recognizes a hard link is bases on the inode
		-> can not do a hard link to one partitions to a another
		-> hardlinks are copys, have the same size, permissions and owners.
		-> if we have three hardlinks of a file, two can de delete and the file still exists

	-> soft links == symbolic links, comparable to links on windows system
		-> if the original file is deleted, the soft link remains poiting to nothing
		-> can be recognize because have a different color, show with an arrow and a letter "l"
links

ln file_name.txt link_name 			# create hard link
man ln  							# make links between files
ls -l 								# see how many links are from each file
ll 									# see the directories links
ls -li 								# check the inodes, equals inodes means hard links


ln -s file.txt link_to_file			# file_name.txt soft_link_name
ln -s 								# ln --symbolic





