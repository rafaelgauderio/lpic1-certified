#!/bin/bash


# find - find information inside files base on size or permissions.
find /home/rafael -name *.txt
sudo su -
find / -perm -u+s
find / -perm -g+s


passwd                      # password update successfully
chage l- rafael             # display password expires, account expires, password settings

# ulimit - get and set user limits
ulimit -a                   # all current limits of the systems. core file size, max locked memory, stack size, virtual memory, max memory size
ulimit --help
ulimit -S                   # use the soft resource limit (user)
ulimit -H                   # use the hard resource limit (root)
ulimit -c 50000             # set core file size 50000 blocks

lsof                        # listen open files
lsof -i                     # files open and connect to the internet

lsof /media/usb             # see a PID USB stick on the Computer

fuser                       # show which processes use the named files, sockets or filesystems.
fuser /home/rafael
ps -ef | grep [PID]

w                           # show who is currently loggin, informations like uptime
who -u                      # show the user that is loggin
who -d                      # display dead process

last                        # display who has last loggin in the system

grep sudo /etc/group

sudo su -                   # log as root
su - rafael                 # log as rafael
su -l rafael                # log as rafael
vi /etc/sudoers
    # Defaults      env_reset
    # Defaults      mail_badoass
    # root          ALL=(ALL:ALL) ALL
    # %admin ALL=(ALL) ALL
    # include /etc/sudoers.d



