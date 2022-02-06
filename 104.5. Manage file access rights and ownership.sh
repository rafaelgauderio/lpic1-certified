#!/bin/bash

<<FileAccess
	-> 104.5. MANAGE FILE ACCESS RIGHTS AND OWNERSHIP
	
		-> owner 		owner_group 		other_users
		-> rafael 		rafael
		-> rw- 			r-- 				r--
		-> r=read, w=write, x=execute
		-> read=4, write=2, execute=1, rwx=7, rw-=6, r--=4
		-> 777= owner, group, others= rwx,rwx,rwx
		-> 654 = rw-,r-x,r--
FileAccess
	
ll 							# see permissions on files and directories
sudo su -u 					# login as root
su - rafael 				# login as rafael

chmod 						# change file mode bits. change permissions of the owner, group, others
chmod 664 file.txt			# permission now is rw-,rw-,r--
chmod u=rxw,g=rw,o=rx file.txt
chmod u=rw,go=rx file.txt	# user=rw, group=rx, other=rx, on the file file.txt
chmod g+w file.txt 			# add write permissions to the group

<<SpecialPermissions
		-> special permissions
		-> sticky bit	SETUID 		SETGUI
		-> t 			
		-> T=t-x = remove execute permissions from others
		-> t = each user can delet his own files and no other files 
		-> s= SETUID = program is always started with the rights of the file owner USER
		-> s= SETGID = program is always started with the rights of the file owner GROUP
SpecialPermissions

chmod 1755 file.txt 						# add sticky bit to the file 	= t = x + T
chmod 4775 file.sh							# add SETUID bit to the file 	= s = x + S = user group permissions
chmod 2775 file.txt 						# add SETGUI bit to the file 	= s = x + S = column group permissions
	
man chown									# change owner
sudo chown rafael:juliana file.txt 			# change owner and also owner group
chown :manuel file.txt						# change only owner group to manuel
chown manuel: file.txt 						# change owner recursively inside the directory
man chgrp									# change only group and nothing else. change group owership
sudo chgrp -R juliana folder_name			# change owner group to juliana

man umask 									# define standards permissions. set file mode creation mask
											# 0666 to files and 0777 to directies
umask -p 									# display actual umask value = 0022 = 0644 files
											# display umask value = 0022 = 0755 directories
umask 0026 									# change umask to 0026 = 0640 to files - 0751 to directories
umask -S 									# values applie to directory
vi /etc/login.defs
	 






