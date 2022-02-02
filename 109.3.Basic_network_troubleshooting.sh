#!/bin/bash

sudo apt install net-tools  # package that contains ifconfig
ifconfig                    # display the current settings of the network adapters and configure them
ifconfig enp0s3             # display informations of this interface
sudo su -
ifconfig enp0s3 192.168.178.25 netmask 255.255.255.0        # set Ip address and netmask
ifconfig enp0s3 down        # deactivated the adapter
ifconfig enp0s3 up          # activated the adapter

ifdown eth0                 # switches off the eth0 network interface
ifup eth0                   # switches on the eth0 network interface 

ping                        # send a request to an address and see if we get a answer           
ping 192.168.178.1
    # ctrl + C = end the output
ping -c 3 192.168.178.1     # 3 request

ping6 localhost
ping6 host.domain.com
ping6 2001:4860:b002::68
ping6 ipv6.google.com

route                   # display the route table from the computer
route -n                # all display as IP address
    # * on the gateway column means that no router was configured

sudo route add default gw 192.168.0.1       # set default gateway
sudo route del default gw 192.168.178.200   # delete default gateway
sudo route add -net 192.168.1.0 netmask 255.255.255.0 gw 192.168.1.1

sudo apt install traceroute
traceroute              # show the individua routers that have data packets passes through to get to its destination

ping -c 1 linux.kurse.com
traceroute linux.kurse.com          # see the path of the data package took to reach its destination and the router response
traceroute -n google.com            # display the path with Ip Address

# tracepath                         # is the counterpart to traceroute
tracepath delucahigiene.com.br      # show the path like the traceroute but different


man netstat
# netstat - print network connections, routing tables, interface statictics, masquerade connections
netstat -r                          # display the route table
netstat -atop                       # all, TCP, timer information, PID/program name
netstap -atop | grep ":80"          # see if webserver is activated

ss                      # socket statistics. recplace netstat.  The counterpart to netsta
                        # contact the kernel direcly
ss -atop


man netcat
# netcat - arbitrary TCP and UDP connections listens
netcat -4               # use only IPv4
netcat -b               # allow broadcast
# netcat == nc
nc -l -p 1234                   # l=listen, p=port
netcat 192.168.178.48 1234      # ESTABLISHED connection


ip                  # display and reconfigure various network settings
ip address show     # ip addr sho = ip a s
ip a s enp0s3       # show only information of the interface enp0s3
ip -h               # ip -human-readable
ip -s               # ip -statistics
ip -d               # ip -details

ip route show       # display like route -n
ip neighbour show

sudo su -
ip address change 192.168.178.225/24 broadcast 192.168.178.255 device enp0s3   # set ip address
ip address del 192.168.178.225 dev enp0s3   # remove ip address
ip link set down enp0s3                     # change to state down
ip link set up enp0s3                       # status back to up 





