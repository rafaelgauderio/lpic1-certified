#!/bin/bash

# 102.2. INSTALL A BOOT MANAGER


	# GRUB LEGACY
			# -> BIOS -> boot.img (Stage 1) -> core.img (stage 1.5) -> /boot/grub (stage 2)
cat grub.conf/menu.lst
cat device.map
sudo grub-install /dev/sda1 					# import to specity the position on which our boot director are located
	
vim /boot/grub/grub.conf
	# default=0
	# timeout=0
	# splashimage=(hd0,0) /grub/splash.xpm.gz
	# hiddenmenu
	# title Linux Server XYZ
	# root (hd0,0)
	# kernel /boot/vmlinuz-4.012-3.dlk44 ro root=LABEL=1 rhgb quiet
	# initrd /boot/initrd-4.0.12-3.dlk44.img	 


	# GRUB 2
cd /boot/grub2
cd /boot/efi 								# first 512 bytes of hard drive

<<UEFI
-> Fisrt 512 bytes of hard drive separate to EFI
-> core.img (stage 1.5)
-> Partition entry array
-> GPT Header
-> boot.img (stage 1) (MBR)
-> UEFI
UEFI

cd /boot/grub 								# do not edit
cat /boot/grub/grub.conf
vim /etc/default/grub 						# this file can be edit
		# GRUB_DEFAULT=0
		# GRUB_TIMEOUT_STYLE=hidden
		# GRUB_DISTRIBUTOR=`lsb_release -i -s 2 > dev/null || echo Debian`
		# GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
		# GRUB_CMDLINE_LINUX=""
man grub-mkconfig							# grub generate a GRUB configuration file
sudo grub-mkconfig 							# save the changes in the file /etc/default/grub
man update-grub 							# only in debian system