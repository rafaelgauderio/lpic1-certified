#!/bin/bash


vi /etc/passwd
    # :/usr/sbin/nologin    - this way the user can not log in

sudo su -u
passwd root
exit
su root                     # now we can log in as directly as root

sudo su -
vi /etc/nologin             # now nobody can log in the system if this file is create
vi /etc/shadow

ll etc/init.d               # contains services and functions thar are started by the system

# xinetd                    # extended internet service daemon - Manage internet bases connection with secure
apt instal xinetd
vi /etc/xinetd.conf
    # defaults
    # includedir /etc/xinetd.d
cd /etc/xinetd.d/
ll

vi /etc/hosts.allow
    # ALL:LOCAL             # just local clients will have access to all services
vi /etc/hosts.deny          # all clients are denied to access all services
    # ALL:ALL

# file host allow takes precedente over hosts deny

cd /etc/systemd/system/sockets.target.wants/
vi uuidd.socket