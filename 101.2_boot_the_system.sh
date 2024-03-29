#!/bin/bash   
   
    # dmesg
    # journalctl
    # BIOS
    # UEFI
    # bootloader
    # kernel
    # initramfs
    # init
    # SysVinit
    # systemd

<<Boot

	-> Boot process

	    	BIOS -> Bootloader -> Kernel -> InitialRamDisk -> init(PID 1)

	    -> Bootloader = start the linux Kernel
	    	-> GRUB = Grand Unified BootLoader 
	    	-> LELO = Linux Loader
	    -> PID = Process ID	
	    -> As soon as PID 1 are started, the InitialRamDisk is no longer required
Boot

pstree -p 				# see all the process in tree structure, see PID
lxc image list
lxc launch ubuntu14		# container much faster than a virtual machine
lxc exec novel-pangolin -- bash
ps -ef 					# see the PID that are running

dmesg 					# print or control the kernel ring buffer
    					# see what happen during the boot
dmesg | grep -i error	# -i, no distinction is made between upper and lower case

journalctl 				# query the systemd journal = consulta o diario do systemd
    					# only work with systemd Linux distributions
journalctl -k 			# kernel
    					# shows the kernel messages of a systemd system and can only be used on systemd systems

<<Grub2
    	-> Current Bootloader = GRUB 2
    								-> comando line interface
    													-> rescue mode
    													-> edit mode
   	# shift		= display de menu bootloader during the boot
   				= press shift after the BIOS and hold it until the menu appears
   	# e 		= enter the edit mode, use to change certain start parameters
   	# crtl + X  = start the system
   				= key combination can we save changes made in the bootloader during the boot process
   						 and boot the system with these changed settings
Grub2

<<SysVinit
   	-> SysVinit 

   		-> PID 1	= First process tha started
   		-> All process originate from init
SysVinit

System V init
ls /sbin/init
   				# init starts the relevant services one after one
vi /etc/inittab
   				# runlevel 	= states which Linux system operated, 7 diferent runlevels
   				# runlevel 0	= switched off
   				# runlevel 1	= single user mode
   				# runlevel 2	= multi user, without NFS
   				# runlevel 3	= network and multi user interface
   				# runlevel 4	= unused
   				# runlevel 5 	= default desktop system (network and graphical interface), X11
   				# runlevel 6	= reboot (Do NOT set initdefault to this)

init0			# switched off
init6			# restarted	

cd /etc/init.d 	
cd /etc/rc.d
cd /etc/rc.d/rc5.d
   				# files with s = start
   				# files with k = kill

chkconfig --list			# see wicht processes are installed
   							# in the system and which runlevel they should be started
/etc/init.d/ngnix status	# ngnix is stopped
/etc/init.d/ngnix start
service ngnix stop
service ngnix start
service ngnix restart
service ngnix status


<<Upstart  	
   	-> upstart (outdated and hardly use)

   		-> Started all processes, one after other
   		-> Able to start process in parallel as long as these processes are independent
   		-> /etc/init 	= process here are started automatically
Upstart
cd etc/init
   				# files.conf
   				# ssh.conf, tty1.conf, resolvconf.conf, rsyslog.conf, udev.conf
cd /sbin
cat /sbin/init
initctl list 	# display a list of all image jobs
initctl status udev
initctl start udev
initctl stop udev
initctl status udev

<<Systemd
   	-> systemd (Sucessor to upstart, default system nowdays)

   	-> starts interdependent processes in parallel, making the system start a little faster
Systemd

cd /etc/systemd/sytem				# system files that are call units
cd /lib/systemd/system
# if two unit with the same name are in both directories, then the units in th /etc directory is preferred
systemctl list-units				# display all units off the system
sudo apt install nginx				
systemctl status nginx
systemctl start ngix
systemctl restart ngix
systemctl stop ngix
vim /etc/systemd/system.conf 		# file of main configuration of systemd


   	










