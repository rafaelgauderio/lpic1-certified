#!/bin/bash

# ARPA = Advanced Research Projects Agency
# OSI = Open Systems Interconnection
# TCP = Transmission Control Protocol
# UCP = User Datram Prontocol - Simple protocol, faster, but has no garantee transmissions


# PORTS - correspondig data packets can be sent throught the corrent program
# 65536 ports are available
<<PORTS
    FTP (data exchange) - 20
    FTP (Connection establishment) - 21
    SHH - 22
    TELNET - 23
    SMTP - 25
    DNS - 53
    HTTP - 80
    POP - 110
    NTP - 123
    IMAP - 143
    SNNP - 161
    LDAP - 389
    HTTPS - 443
PORTS

vi /etc/services                # file display all the ports. relationship between service and port established.

grep - i https /etc/services    # htpps 443/tcp

sudo apt install net-tools      # install program netstap
sudo apt install nmap           # network maps - map is a port scanner

nmap localhost                  # examined open ports and corresponding services in localhost

netstat - teupan                # display Ip Address and corresponding ports
netstat

# IP Protocal - localet in the third layer - network layer
# IPV4 - 32 Bits 00000000.0000000.00000000.00000000 - 0.0.0.0
#                128 64 32 16 8 4 2 1 - values of individual bit
# 10000000.00000000.00000000.00000000 = 128.0.0.0
# 11100000.00000000.00000000.00000000 = 224.0.0.0 =  224(128+64+32)
# 11111111.11111111.11111111.11111111 = 255.2555.255.255
# 11000000.10101000.00000001.00001010 = 192.168.1.10

# Sub net masks - determinate with part of the Ip address belong to the network part 
# which part to the host part

<<IPV4
    Net class       - range
    class A         - 0.0.0.0   - 127.255.255.255
    class B         - 128.0.0.0 - 191.255.255.255
    class C         - 192.0.0.0 - 233.255.255.255
    class D         - 224.0.0.0 - 239.255.255.255
    class E         - 240.0.0.0 - 255.255.255.255 
IPV4
# class B network - the 1 moves from the last digit of the first byte to the first digit
# 00000001.00000000.00000000.00000000 = 1.0.0.0 CLASS A
# 10000000.00000000.00000000.00000000 = 128.0.0.0 CLASS B
# 11000000.00000000.00000000.00000000 = 192.0.0.0 CLASS C
# 11100000.00000000.00000000.00000000 = 224.0.0.0 CLASS D
# 11110000.00000000.00000000.00000000 = 240.0.0.0 CLASS E

<<SUBMASK
 A computer can only communicated directly with another host, only if they are in the same network segment
 Computer send the data to the router if the host are not in the same submask
 Possibles numbers of submask
 00000000 - 0
 10000000 - 128
 11000000 - 192
 11100000 - 224
 11110000 - 240
 11111000 - 248
 11111100 - 252
 11111110 - 254
 11111111 - 255
SUBMASK


# 192.168.1.10 / 255.255.255.0
# 11000000.10101000.00000001.00001010
# 11111111.11111111.11111111.00000000
# 11000000.10101000.00000001.00000000 = 192.168.1.0 = network (1*1=1, 1*0=0, 0*0=0)
# 3 bits for subnet and 1 bit (last) to the host
# 0 = network address,  255 = broadcast   
# broadcast - sending of data packets to all computer withi the network segment = always the last ip avaliable

# another example
# 192.168.1.10 / 255.255.0.0
# 11000000.10101000.00000001.00001010
# 11111111.11111111.00000000.00000000
# 11000000.10101000.00000000.00000000 = 192.168.0.0
# 2 bits for subnet and 2 bits for hosts range
# 192.168.0.0 for net, 192.168.255.255 - broadcast
# 192.168.0.1 - 192.168.255.254 for hosts


# another way to write 192.168.1.10/24 = 255.255.255.0 
# 11111111.11111111.11111111.00000000 = /24 = 24 means that the first 24 bits of the ip address are switched on

# 192.168.0.23 = 23 firts bits must be on
# 1111111.11111111.11111110.00000000 = 255.255.254.0
# 255.255.255.0 - 192.168.0.20  192.168.0.X 192.168.1.X - are in the same network

<<IPV6
develop to the problem ok lack of IP address in IPVA
128 Bits - represent in hexadecimal notation
0 - 9   a - f
8 segments of 16 bits

fe80:0000:0000:0000:017b:8fde:e8ba:043a = LONG FORM
the zeros at the beginnig of the segment can be LEFT  OUT
fe80:0000:0000:0000:17b:8fde:e8bd:43a
segments exclusively of zeros can be LEFT OUT, and only two consecutive colons
fe80::::17b:8fde:e8bd:43a =   
fe80::17b:8fde:e8bd:43a = SHORT FORM
4 segments for the host and 4 segments for the net address (16+16+16+16=64)
first 64 bits = network area
second 64 bits = host area

fe80:0000:0000:0000 - netword address
017b:8fde:e8ba:043a - host segment

fe80:0000:0000:0000:017b:8fde:e8ba:043a/64 - 64 tell how many bits of the network address belong to a fixed network
fe80:0000:0000:0000:017b:8fde:e8ba:043a/48 - first 3 segments belong to a fixed network

IPV6

# 3 ranges of IPV6
# fe80::/10 - no router, host in the same network segment
# fc00::/7  - private address
# global unicast address





