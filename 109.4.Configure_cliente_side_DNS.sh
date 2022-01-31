#!/bin/bash

# DNS = domain name system = assigned names to IP address

# nslookup - use to query internet domain name servers for information
ping -c 1 linux.kurse.com               # display ip address for this domain name
nslookup delucahigiene.com.br
nslookup                                # command line interactive mode
    # google.com
    # exit

# host - DNS lookup utility, find the ip address of a domain name and performs reverse lookups.
host google.com                         # google.com has address 216.58.212.171
host -v delucahigiene.com.br            # details information
host 216.58.212.171                     # reverse query
vi /etc/resolv.conf
    # nameserver 127.0.0.53
    # options ends0 trust-ad
    # search fritz.box

# dig - (Domain Information Groper) - Perform DNS lookup for nameserver queries and show the result
dig google.com.br                       # more information
dig -v                                  # display the version of dig

# getent - search for information in administrative information bases of linux system
cat /etc/passwd                         # same result as getent passwd
getent passwd
getent hosts