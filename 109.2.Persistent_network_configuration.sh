#!/bin/bash

# network manager is a deamon that manages network connections and configurations
# nmcli - manage and control NetworkManager. Displays network status

nmcli                       # display the individual interfaces                
nmcli device                # see our interface without much information
nmcli device show           # very detailed information about the devices
nmcli connection           # show name, UUID, type, device, status
nmcli radio                 # check wifi connection
nmcli device wifi rescan    # first scan
nmcli device wifi list      # show the result of wifi avaliables    
nmcli connection down name_of_the_connection    # deactivated a connection
nmcli connection up name_of_the_connection      # established a connection
nmcli device disconnect wlo1                    # disconnect wlo1
nmcli device connect wlo1                       # connect wlo1

cd /etc/NetworkManager/systems-connections/     # folder with configuration connections files
ll

sudo vi name_of_the_connection.nmconnection     # file with informations of wifi connection

nmcli connection edit name_of_the_connection
    # console to manage conection
    # help, goto, set, describe, print, verify, save, activate, quit
    # nmcli> goto ipv4 
        # nmcli ipv4> set method manual
        # nmcli ipv4> set addresses 192.168.0.10/24
        # nmcli ipv4> set gateway 192.168.0.1
        # nmcli ipva> set dns 192.168.0.1
        # nmcli ipva> save
        # nmcli ipva> quit
sudo systemctl restart NetworkManager


# ipup and ipdown don´t work if the interfaces had been configured with network manager
# ipup - used to start network interfaces
# ipdown - uset to stop network interfaces

vi /etc/network/interfaces          # file of networks without a Network manager
    # auto eth0
    # iface eth0 inet static
    # address 192.168.0.43
    # network 192.168.0.0
    # netmask 255.255.255.0
    # broadcast 192.168.1.255
    # gateway 192.168.0.1

hostname                            # display the computer name
cat /etc/hostame                    # content of the file display the computer name

hostnamectl                         # display hostname, Operation system, architeture, Kernel, Machine ID, Virtualization
hostnamectl --help
hostname -I                         # display the ip address of the local computer
hostnamectl status
hostname set-hostname NAME
hostname set-icon-name NAME
hostname set-chassis NAME
hostname set-deployment NAME


vi /etc/host                        # mapping between IP address and FQD (Fully qualified domain) ends
                                    # predecessor of DNS (domain name systems)

# loop back adress = channel with only one end point sender and receiver are identical

vi /etc/resolv.conf
    # nameserver 127.0.0.53
    # options edns trust-ad
    # search fritz.box

vi /etc/nsswitch.conf                # name servers switch
    # passwd: file systemd
    # group: file systemd
    # shadow: files
    # gshadow: files
    # protocols: db files
    # services: db files





