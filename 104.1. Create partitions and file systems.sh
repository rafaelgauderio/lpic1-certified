#!/bin/bash

<<Partitions
-> 104.1. CREATE PARTITIONS AND FILE SYSTEMS

		-> filesystems ext2, ext3, ext4
		-> ext3 (ext2 + journauling) - journauling: possibility of recovering files that are being recorded at the exact 
						moment	when the power goes out or systems crashes
		-> ext4: run faster and main memory is integrated differently
		-> xfat: developed exclusived for flash memory
		-> BTRs: based on the copy-on-write principle. copy of a file is only created when copy is changed	multiple sub volumes are possible
		-> We have to create a filesystem to be able to use a new partition
Partitions
	
man fdisk 					# manipulate disk partition table. GPT, MBR, Sun, SGI and BSD
sudo fdisk -l 				# list the partitions /dev/sda
sudo fdisk /dev/sdb			# Command (m for help). Changes will remain in memory only, until you decide to write them
									# d 	delete partition
									# l 	list known partition (FAT12, FTFS, linux swap(82), linux(83))
									# p 	print table partition
									# i 	print information about the partition
									# n 	new partition
									# q 	quit

mkfs						build a Linux filesystem
sudo su -
ls -la /sbin/mkfs*	mkfs, mkfs.bfs, mkfs.ext2, mk2fs, mkfs.fat, mkfs.ntfs, mlfs.fat
mkfs.ext4 /dev/sbd1 	
mkfs -t ext4 /dev/sbd1
lsblk -f 					# display in a tree table all filesystems
sudo fdisk /dev/sdc
mkfs.ext2 -j /dev/sdc1 		# -j = journaling. ext2 + journaling = ext3
sudo mkfs /dev/sdd1 		# write ext2 = default filesystem = ext2

apt install xfsprogs
apt install btrfs-tools
apt install btrfs-progs

mkswap 						# set up a Linux swap area
sudo fdisk /dev/sdb
			# choose filesystem type 
			# t (change a partition type) = 82 = swap partition
			# w = write (save) the changes
mkswap /dev/sdb1 			# make a swap filesystem
man swapon 					# now partition swap in up
swapon /dev/sdb1


man gdisk 				interactive GUID partition table (GPT) manipulator
sudo gdisk /dev/sdc
sudo gdisk -l /dev/sdc



man parted 					# GNU parted - a partition manipulation program. Create and change partition
sudo parted -l 				# list all the partitions (equals) parted --list
sudo parted /dev/sdc		# console command line of parted program
		#	(parted) 		# help mklabel
							# mklabel msdos
							# help mkparted
							# mkparted primary 			create a filesystem
								# btrfs
								# start? 0
								# End? 2000MB
							# print	
							# rm 						delete a partition
							# partition number?1
								
gparted 					# graphical interface