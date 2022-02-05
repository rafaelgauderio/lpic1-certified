#!/bin/bash

		# -> 103.6. CHANGE PROCESS EXECUTION PRIORIES
		# nice, renice, ps, top

# man top 					# displays the running process on the system
<<niceRenice
		-> nice value  	priory giver to a process
						the highest the nice, more CPU power this process receives
						standar value = ZERO
						range -20 (best value) -> +19 (worst value) = lowest priority
						minus values =  -20 to zero = only by root
						0 - 19+ = any user can change these value

		-> renice
    					if the program ins alredy running nice no long work 
						renice == change nice to running program

		-> ps			display informations about the process running
			ps -a		process from all use
			ps -t		display the tree of running process
			ps -x 		display process that dit not be initiated by the console
			ps -o 		use format defined by user. loke pid, ppid, ni
niceRenice

nice -n 5 sleep 1000 & 				# display 6143
top -p 6143
nice sleep 2000 &					# nice without inform -n value = use 10 value by DEFAULT
    	
    	
ps -ef | grep sleep 				# PID 6150 
sudo renice 2 -p 6150 				# change nice value to 2 to processes 6150
sudo renice 2 -p 6150				# old priority 10, new priority 2
sudo renice -15 -p 6150				# old priority 2, new priority -15 (only allowed by root)
sudo renice 1 -u rafael 			# chance nice value from user rafael
ps -efo pid,ni,cmd 					# see pid ni cmd in columns
    

