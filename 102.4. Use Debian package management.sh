-> 102.4 USE DEBIAN PACKAGE MANAGEMENT
	#!/bin/bash
	
	# dpkg
	# .DEB = debian package = install debian binary packages
man dpkg 		= package manage for Debian	
sudo su - 
dpkg -i discord-0.0.12.deb 				# install discord
										# erros messagens dependency problems
dpkg --configure discord-0.0.12.deb
dpkg-reconfigure discord-0.0.12.deb
dpkg -c discord-0.0.12.deb 				# see the file structure
dpkg -l 								# display a list of all insert packages on the system
dpkg -l | grep psmics 					# show where the program installed
dpkg -i skypeforlinux-64.deb
dpkg -L skypeforlinux-64.deb			# shows th files and directories of the installed package
dpkg -r skypeforlinux-64.deb 			# remove program
dpkg -P skypeforlinux-64.deb 			# purge with configuration files
dpkg -l | grep skype



	# apt
man apt = 								# provides a high-level commandline interface for the package management system
sudo su -
apt install ./discord-0.0.12.deb 		# install from directory that we are locate
										# ask permision to install aditional packages
apt purge discord 						# remove package and configuration files
dpkg -l | grep discord 					# discord no long exists in the systems
vi /etc/apt/sources.list 			= 	# file with paths of repositories
				# we can manually add new path
apt update 								# update de package sources (don´t install anything)
apt upgrade 							# install the updates now
apt full-upgrade 						# update and delete files
apt autoremove 							# clean files that previously inside due to missing dependency, but are no longer needed.
										# we have always 2 Kernel in the system, when we install a new kernel, the old is deleted
apt-cache search htop 					# query the cache with package sources
apt install htop
htop 									# execute the program
apt-cache search skype 					# display the name of the package
apt install htop skypeforlinux 			# install 2 programs one after the other
apt-cache depends on skypeforlinux 		# see what dependecies need


	# aptitude
man aptitude 							# graphical user interface, need to be install
sudo su -
apt install aptitude
aptitude instal thunderbird
aptitude remove thunderbird
aptitude purge thunderbird
aptitude search thunderbird
				# ampitude there is no cach
sudo aptitude 							# start the graphical interface e can also install programs because of the sudo command



