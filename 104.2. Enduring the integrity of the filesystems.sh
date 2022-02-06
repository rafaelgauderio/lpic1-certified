#!/bin/bash

	# -> 104.2. ENSURING THE INTEGRITY OF THE FILESUSTEMS
	
man du 					# disk usage. estimate file space usage. Sumarize disk usage of the set of FILES recursively for directories.
sudo du / 				# the store space of each individual file is now listed
sudo du -hsi 			# --human-readable --summarize --inodes
sudo du -hs /usr 		# check the size of /usr folder
sudo du -h --max-depth=4 /home		# check /home and more 4 folders deep

man df 					# disk filesystem. Report file system disk space usage. Disk usage partitions.
df -h					# df --human-readable
df -i 					# df --inodes 		inode contain various metadata (data, time, size, permissions)

man fsck 				# check and repair a linux filesystem
						# we can only check partitions when they have not yet been mounted
cd /home/rafael/newhdd/
sudo fsck /dev/sdc1 	# dev/sdc1 is mounted. cannot continue.
sudo umount /dev/sdc1 	# target is busy. we cannot be inside the folder
fsck /dev/sdc1 			# now the partition in check. It is unmonted and unbusy
e2fsck 					# fsck to ext2 partitions
sudo mount -t ext4 /dev/sdc1 /home/rafael/newhdd 			# mount the partition again
ls -la /sbin/mkfs*

man tune2fs 				# adjust tunable filesystem parameters on ext2/ext3/ext4 filesystems 
							# can only be use to ext... filesystems
sudo su -
tune2fs -l /dev/sda1 		# -l list the content of the filesystem superblocks
tune2fs -c 100 /dev/sda1	# setting maximal mount count to 100
tune2fs -i 5d /dev/sda1 	# -i interval-between-checks, 
tune -c max-mount-counts 	# setting interval between checks to 432000 seconds

man xfs 						# layout, mount options and supported file attributes for the XFS filesystem	
sudo umont /dev/sdd1			
mount | grep -i xfs
sudo su -
xfs_repair 						# reapir an XFS filesystem
xfs_repair -n /dev/sdd1 	
sudo xfs_repair -v /dev/sdd1	# verbouse output
man xfs_db 						# debug an XFS filesystem
sudo xfs_db /dev/sdd1			# console mode of xfs_db
									# (xfs_db) 	help
									# uuid
									# frag	
sudo mount -t xfs /dev/sdd1 /home/rafael/xfs 			# mount the filesystem [type_filesystem] [partition] [point]			
xfs_fsr /dev/sdd1 				# improves the organization (equal defragmentation in a windows environment)
xfs_admin 						# change parameters of an XFS filesystem
xfs_metadump 					# copy XFS filesystem metadata to a file

dd 								# data duplicator. Used to copy and convert data
dd if={origin} of={destiny}[options]
dd if=/dev/sda of=/dev/sdb bs=4096 conv=noerror,sync



