#!/bin/bash

	# -> 104.3. CONTROLLING THE MOUNTING AND UNMOUNTING OF FILE SYSTEMS
	# ->  All files accessible in a Unix system are arranged in one big tree, the file hierarchy, rooted at /


mount 												# mount a filesystem
lsblk -f 											# lsblk --fs ,list block devices whith information about filesystems
mount | grep -i "dev/sd*"
sudo mount -t ext4 /dev/sda1/ /home/rafael/newhdd/
mount -t cdrom					 					# mount a cdrom partition
mount -t iso9600									# mount a cdrom partition
mount -t xfs /dev/sdd1 /home/rafael/xfs-new 		# has to exist the directory ~/xfs-new

umount 												# umount file systems
sudo su -
umont /dev/sdd1										# umount file system /dev/sdd1
umont /home/rafael/xfs-new 							# umount mount point, but /dev/sdd1 still mounted

cat /etc/fstab 						# file that contains the corresponding partitions that are automatically mounted
sudo vi /etc/fstab
		# <file system>	<mount point>			<type>	<options>	<dump>	<pass>
		# /dev/sdc1		/home/rafael/newhdd		ext4	defaults	0 		0
		# defaults options == rw, suid, dev, exec, auto, nouser, async

sudo mount -a 						# mount all partitions describe at /etc/fstab file
lsblk --list 						# produce output in the form of a list						
tune2fs -l /dev/sda5 				# adjust tunable fylesystem parameters on ext2/ext3/ext4 filesystem

man blkid							# abreviation of block identification. Read information direct from devide.
									# usually intented to test the functionality of a library
blkid 								# locate/print block device atributes
blkid --label --uuid

	# applies only to systemd options
systemctl 							# control the systemd system and service manager
systemctl status /hdd2 				# check	 /hhd2		 
systemctl daemon-reload				# reaload the mount point
systemctl stop /hdd2				# unmoun the partition
systemctl start /hdd2 				# mount the partition
cat /run/systemd/generator/hdd2.mount

