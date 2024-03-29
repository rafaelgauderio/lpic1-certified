#!/bin/bash

	# 102.5. using RPM and YUM package management

	# RPM = Red Had package management, equivalent dpkg
	#  Use by Fedora, CentOS, Red Hat, Suse
man rpm 								# RPM package manager. Built, install, query, verify, update and erase	individual software packages.
rpm -qpl skypeforlinux-64.rpm 			# query, package, list files
rpm -qpi skypeforlinux-64.rpm 			# query, package, information
sudo su -
rpm -i skupeforlinux-64.rpm 			# install
rpm -qa 								# query, all
rpm -qa | grep skype
rpm --query --all
rpm -e skypeforlinux 					# delete, erase, remove
rpm -U skypeforlinux.rpm 				# Update
rpm -qf /etc/inittab 					# find out which package a particular file originaly come from

mam rpm2cpio 							# extract cpio archive from RPM Package Manager package.
										# cpmverts the .rmp file specified as a single argument to a cpio archive on standart out.

rpm2cpio skypeforlinux-64.rpm > skypeforlinux.cpio 				# now we have a .cpio archive				
rpm2cpio skypeforlinux-64.rpm | cpio -idv


		# YUM = Yellowdog Updater modified, equivalent to apt in Debian Distributions
cd /etc/yum.repos.d
vim fedora-updates.repo
sudo su -
yum update 								# actualy update the system, ask for confirmation
yum search htop 						# find the program
yum info htop.x86_64 					# more info from the package
sudo yum install htop
yum list installed 						# list all packages
yum list installed | grep htop
yum remove htop
yum autoremove 							# sudo apt autoremove
yum whatprovides dmesg 					# source of the dmesg package is display
yum install yum-utils
cd ~ 									# go yo home directory
yumdownloader htop 						# just download the package, but not installed

		# zypper = command line interface belongs to OpenSUSE
sudo su -
apt install zypper
zypper se htop 							# short search
zypper install htop
zypper remove htop
zypper list-updates
zypper update
zypper repos 							# zypper repositories













