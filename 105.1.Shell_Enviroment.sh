 #!/bin/bash
 #-> Shell environment

cat /etc/passwd
#	 	-> global files 	= applied globally for each user
#	 	-> four types of shell -> login shell, non login shell,
#	 				 interactive shell and not interactive shell
	 # crtl + alt + F7		= log out of the shell
	 # crtl + alt + F2  	= log in again
vi /etc/profile 		# global configuration file for the log shell
ll /etc/profile.d
cat /home/user/.bash_profile 	# environment variables for the loggin show are assigned here
cat ~/.profile
cat /etc/bash.bashrc 			# environment variable are set, paths are sat 
	 		#-> file found only in Debian System
cat ~/.bashrc 		# HISTSIZE, HISTFILESIZE, some alias like ll, la, l
cat ~/.bash_logout 	# script to clear que console after log out