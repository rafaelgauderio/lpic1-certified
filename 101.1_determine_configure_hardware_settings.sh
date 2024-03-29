 #!/bin/bash

# https://lpi.org

<<ComandosEdiretorios
    # /sys/
    # /proc/
    # modprobe
    # lsmod
    # lspci
    # lsusb
ComandosEdiretorios
    

# Install virtual box in Ubuntu and initial bash comands

apt-cache search virtualBox
sudo apt install virtualbox virtualbox-guess-additions-iso
# pwd - print working directory
# ls  - list the contents
			# -> directory = blue
			# -> files = white
			# -> orange = pack arquives like .gz, .bz2, .xz
			# -> green = executable files			
	# cd  - change directory
cd Documents/
cd ~        # home directory
cd ..       # going back one directory
cd ../..    # going back two directories
man ls 	    # list directory contents manual

# Virtual File System
	
man uname   # print system information manual
uname -r 	# current kernel version
		    # You can remove not require module from the Kernel
uname -m    # system architecture are display (x86_64)
uname -a    # all the information of hardware

lscpu		# details about the cpu

cd /proc    # virtual directory, only available during runtime
		    # this directory is delete as soon as the system ins shutdown
			# directory number, numbers represents process id = PID
cat modules	# concatenate and print the context of the file in the screen
cd /sys     # virtual directory, files stay in the working memory
			# contains information about system hardware and kernel modules.

# Devices Filesystem
cd /dev
			# tty0 files  = prefabricated consoles
			# devices are show as files in linux
cd /udev	# manage the device files
<<udev
		core plug device = can only be plugged when the computer is swiched of.
		hot plug device = can be connected to the system during runtime and also can be used immediately.
		Dbas system = program that send messages back and foward between different applications and inform about events
	-> Udev 
		-> It is a file system present since Kernel 2.6
		-> Responsible for managing the files and devices in the /dev directory
udev

# Kernel Modules

		            # Modules = (driver) is usually an integral part of the kernel
cd /proc            # contain files that are actually running processes
cat modules         # see the modules that the Kernel has just loads
lsmod		        # show the status of modules in the linux Kernel
modinfo lp      	# see further information on the module lp
                     # path/lp.ko	= ko stands for Kernel Object
		             # show the licences and dependencies of the module
modinfo -a  drm     # arthor of the module drm
modinfo -d drm	    # description of the module drm, contains what the module does
modinfo -l drm	    # licensed

		# iptable 		= linux firewall

modprobe	            # Add and remove modules from the Linux Kernel
modprobe -r ip_tables   # remove ip_tables modules
sudo modprobe -r ip_tables
lsmod | grep ip_tables
sudo modprobe ip_tables # install ip_tables modules
		                # -> not use this comandos anymore
rmmod		            # simple program to remove module from the linux Kernel
insmod 	                # simple program to insert a module int the linux kernel
insmod /lib/modules/5.4.0-26-generic/kernel/.../psmouse.ko



# Display hardware
# lspci = list all PCI devices
lspci -v 	            # verbose(more detail view of PCI devices)
lspci -vv               # even more details
lspci -vvv              # even more details
lspci -k                # PCI devices and modules that they use

	# lsusb = list USB devices
lsusb -v                # ls --verbose
# lusb -s [BUS][DEVICE]
lsusb -s 002:001	    # specify only the devices on BUS 2 and device 1
lsusb -s 002		    # only bus2
lsusb -d 1d6b:	        # devices from manufactorer ID 1d6b
lsusb -d                # [vendor]:[product]
lsusb -v -s 001         # versose of bus 001 and device 001
lsusb -t 			    # display tree view

	










