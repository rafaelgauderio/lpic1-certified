#!/bin/bash

# 102.3 - MANAGE SHARED LIBRARIES
	#  Different programs can share the same libraries
cd/lib
cat /lib/libDeplayPkd.so
cd /usr/lib
cd /usr/local/lib
man ldd 					# print shared object dependencies
ldd /sbin/init 				# show the libraries used or linked to the init command
ldd /bin/dmesg 				# show the libreries used and were they are stored
man ldconfig 				# configure dynamic linker run-time bindings
							#  create the necessary links and the library cache
sudo ldconfig 				# everything happen in the background
cat /etc/ld.so.conf
		# include /etc/ld.so.conf.d/*.conf
echo $LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/lib

