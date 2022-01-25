#!/bin/bash

# UTC - Universal Time Coordinated

hwclock         # display hardware time
date            # display system date and time

systemctl stop systemd-timesyncd    # stop date and time syncronization

hwclock --hctosys                   # set the hardware clock to system clock or hwclock -s
hwclock --systohc                   # set the system clock to hardware clock or hwclock -w

# setting time
date +%T -s "17:39:00"              # set the system ime to 17:39:00
date +%H:%M:%S -s "17:40:00"        # another way to set system time

# setting date
date +%D -s "11/05/2022"            # change date to 11/05/2022 and time to 00:00:00

# setting date and time
date +%D:%T -s "02/01/2022 15:40:00"

cat /etc/timezone
cd /usr/share/zoneinfo

timedatectl                         # display local time, universal time, time zone...
timedatectl list-timezones          # list all time zones

# ntp - network time protocol
sudo apt install ntp
sudo systemctl status ntp
vi /etc/ntp.conf
    # pool 0.ubuntu.ntp.org iburst
    # pool ntp.ubuntu.com
    # driftfile /var/lib/ntp/ntp.drift
    # leapfile /var/share/zoneinfo/leap-seconds.list

systemctl stop ntp                  # stop ntp service
apt install ntpdate
ntpdate 1.ubuntu.pool.ntp.org 2.ubuntu.pool.ntp.org     # syncronize the system time with the internet 
systemctl start ntp

ntpq -p                             # ntp daemon, see a table with remote time server, ip address from the server
ntpq                                # prompt from ntpq

apt purge ntp
apt clean
apt autoremove                      # remove the libraries

# chrony                            # Is an implementation of network time protocol
apt install chrony
systemctl status chrony

vi /etc/chrony/chrony.conf
chronyc                             # start a prompt interactive from chrony
chronyc tracking
















