

<<Directories
-> 102.1. PLAN HARD DISK PARTITIONING

	-> DIRECTORY STRUCTURE ACCORDING TO FHS
		/bin 	= basic linux comand binaries administrators and users can execute
		/sbin 	= basic linux commando binaries tha can only be executed by root or users with root rights
		/boot 	= static files of the bootloader and static files of the linux Kernel
					-> /efi, /grub, initrd.img, vmlinuz
		/dev 	= device files from physical and logical devices
		/etc 	= configuration files
		/home 	= user directories of the users
		/lib 	= Dynamic libraries and kernel modules
					-> lib32, lib64					
		/media 	= mount point for removable media
		/mnt 	= mount point for temporarily mounted system
		/opt 	= additional / optional programs
		/root 	= home directory of root
		/run 	= relevant data for ongoing processes						
		/srv 	= Data on varius services
		/tmp 	= temporary data
		/usr 	= system tools, libraries, documents and programs
					-> /bin, /lib, /local, /share, /share/doc
		/var 	= data that is constantly changing, log files
					-> /www
Directories

cd / 					# go to root directory
cd /usr/share/doc 		# documentations files 


<<Swap
	-> SWAP
		-> If the main memory is sufficient for all data, the SWAP partions remain empty.
		-> Whem memory is full, the last need data from memory will go to SWAP partition.
		-> swap file is significant slower than a swap partition.
		-> hardly used nowdays.
Swap

man swapon 				# enable/disable devices and files for paging and swapping
swapon -s 				# see the swap partition/file the we are using
cat /proc/swaps			
sudo swapoff -a 		# disable all swap partitions and files
sudo swapon -a 			# enable all swap partitions and files
vi /etc/fstab


<<Partitions
	-> PARTITIONS
		-> HD = extends for Hard Disk
			-> HDA, HDB
		-> Today
			-> SDA, SDB, SDC = CSI Hard Disk
		-> only possible 4 PRIMARY PARTITIONS
			-> sda1, sda2, sdb3, sdb4
		-> can create a EXTEND PARTITION in a primary partitions
		-> in the extend partition we can create SEVERAL LOGICAL DRIVES
		-> Fist logical partition is ALWAYS sda5.
		-> UUID 	= Universally Unique Identifier
		-> EFI  	= Extensible Firmware Interface
		-> UEFI 	- Unified Extensible Firmware Interfabe = substitute de BIOS
Partitions

cd /dev
ll
cat /proc/partitions 			# display the partitions
lsblk 							# display the partitions
man df 							# report file system space usage
								# correspondig hard drivers and filesystems, size used and available
df -h 							# df --human-readable
		
sudo blkid 						# display UUID
lsblk -o 						# lsblk --output list NAME,SIZE,FSTYPE,MOUNTPOINT,UUID = display the specific columns
	

	# MOUNT
		# We have manually mount the new devices, like a cd room drive
		# Use differents partitions to create var and log files, because if the partition get fill up
				# the partition that contains the filesystem will not crashed.

cd /etc/udev/rules.d 			# configuration files that deffined rules
man mount 						# mount a filesystem 
mount 							# display all the mounted filesystem, attached systems
cat /proc/mounts 				# display all the mounted filesystem, attached systems
cat /proc/self/mounts 			# display all the mounted filesystem, attached systems

	
<<LVM
		-> LOGICAL VOLUME MANAGE
		-> fylesystem			/			/HOME 		/tmp
		-> logical VOLUME 		LV_Root		LV_home 	LV_tmp
		-> Volume Group (VG) 	VG HDD-Composite
		-> Physical Volume  	/dev/sda 	/dev/sdb

		-> In this example part of LV_home is on sda and part on sdb, this can only be
				done because of LVM
		-> LVM can be flexibly adjusted in size
		-> can be create snapshots of a LVM and use as backup
LVM

sudo pvs 						# physical volumes
sudo vgs 						# volume groups
sudo lvs 						# logical volumes






