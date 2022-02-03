<<Runlevels
-> 101.3. RUNLEVELS

	-> Definition = Runlevel is a state in which the computer currently run linux controlled
	-> Runlevel 0 and 6 are always the same independent of the distribution
	-> Runlevel 0 -> the system is switched off
	-> Runlevel 1 -> emergency mode. Runlevel S. Single-user mode.
					-> Only root can access the system.
					-> No network services. No graphical user interface
	-> Runlevel 2 -> Multiuser. No network services and no graphical user interface.
	-> Runlevel 3 -> Multiuser. Network services. No graphical user interface.
	-> Runlevel 4 -> Not used
	-> Runlevel 5 -> Multiuser. Network services. Graphical user interface available
	-> Runlevel 6 -> System will restart
Runlevels


man runlevel 		# Print previous and current SysV runlevel
runlevel 			# N 5 = display actual runlevel
init 0 				# shutdown the system, change to runlevel 0
init 3				# change to runlevel 3
telinit 6 			# change to runlevel 6 = restart

<<BootTargets
-> 101.3 BOOT-TARGETS (systemd)

		Runlevel 	Target
	-> Runlevel 0 	= porweroff.target
	-> Runlevel 1 	= rescue.target
	-> Runlevel 2	= multi-user.target
	-> Runlevel 3 	= multi-user.target
	-> Runlevel 4 	= multi-user.target
	-> Runlevel 5 	= graphical.target
	-> Runlevel 6 	= reboot.target
BootTargets

systemctl isolate multi-user.target 				# swicht to the multi-user.target = go to runlevel 3
runlevel 											# display number runlevel 3
systemctl isolate reboot.target 					# go back to graphical target
systemctl get-default 								# graphical target
systemctl set-default multi-user.target 			# change the default boot target to level 3
systemctl isolate reboot.target 					# go back to set multi-user target (without graphical interface)
sytemctl isolate graphical.target					# go backk to runlevel 3

# shutdown [option] [time] [wall]
man shutdown 									#shutdown, halt, power-off or reboot the machine
shutdown -r +10 								# reboot in 10 minutes
shutdown -c 									# cancel the shutdown
shutdown -r now 								# reboot now
shutdown -r +0 									# reboot now
shutdown -h +20 								# shutdown an switched in 20 hours
shutdown -h 23:45 								# shutdown at especific time

man reboot 										# halt, poweroff, reboot 
reboot -p 									# reboot --porweroff
reboot --reboot
reboot -f 									# reboot --force

# wall 										# write a message to all user
wall -t 									# wall --timeout
wall -g										# wall --group
wall -h										# wall --help
shutdown -r 0:00 wall Atention! The server will restart at midnight!







	

