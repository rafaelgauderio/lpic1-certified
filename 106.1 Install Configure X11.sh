#!/bin/bash

apt install x11-apps

# Linux systems installed on server usually do not have graphical interfaces
# X-windows-system -> network protocol and software that create graphical interfaces

cat /etc/X11/xorg.conf 		# main configuration file, this file no longer exist on kubuntu

# Section "files"
	# Load
	# FontPath
	# Driver
	# Option
# End Section

# debian derivates
cd /usr/share/X11/xorg.conf.d/

xwininfo	# file used do display varius details about a selected window
cat .xssession-errors		# log errors file

# redHat derivates
cd /etc/X11/xorg.conf.d/

export DISPLAY=192.168.0.25:0		# set de Ip of the the client to the variable DISPLAY
xclock 				# now it opens the graphical clock app
# xhost -> is a server access control program for X . It adds and deletes hostnames	to the list allowed to make connections to the X server
xhost 	# acces control enable, only authorized clients can connect
xhost +192.168.0.15 	# ip address being add to access control list
xhost -192.168.0.15		# ip address being removed to access control list
xhost + 				# access control disable
xhost - 				# access control enable, only authorized clients can connect

# xauth  	control the acces protection on the user level
xauth list|grep `uname -n`
DISPLAY=:0; export DISPLAY
xauth add $DISPLAY . hexkey
xauth remove $DISPLAY

# windos manager = another extra interface betweenn a program and a server. I depermines how windows and buttons look
# examples of windows manager 
#  Compiz, Enlightenment, Fluxbox, GNU window maker, IceWM, KWin, marco, metacity, muffin, mutter, Openbox,

# Display Manager - login screen with which you log into linux
# Gnome Display manager, X Display Manager, KDE Display Manager, WINGs, Ligth, LXDE

# GRAPHICAL DESKTOP = combination of X server, X client, display manager, windown manager and others
# Examples: KDE(cool desktop environment), GNOME, Xfce, LXDE, Cinnamon, Mate

# vmc -> virtual network computing
# install program to remote connection
sudo apt install remmina

# spice -> simple protocol for independent computing environments
# xdmcp -> x display manager control protocol

# Accessibility
	# settings 
		# Universal Access = Hight Contrast, Large text, Screen Reader, sound keys, cursos size, 
		# visual alerts, cursos blinking, repeat keys, screen keyboard

# screen Readers
orca -s # confire orca - screen Reader install by default
brltty
voxin
emacspeak






