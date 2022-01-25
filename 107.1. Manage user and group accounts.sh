#!/bin/bash


sudo su -           # give tourself root permissions
useradd rafael      # create a nem user or update the default new user information
su - rafael         # try to log in as rafael, will give a error message
userdel rafael      # delete the user
useradd -u 1500 -d /home/rafael -m -s /bin/bash -c "Test user" rafael
    #-u= user id 1500, -d=home directory, -m=home directory created, -s=shell, -c=comment
passwd rafael       # create a password, ever user can change his own password

ll /etc/skel        # directory that contains the files .bash_logout, .bashrc, .profile
                    # this files are automatically create in the home directory from the new user
mkdir /etc/skel2
touch .bashrcLuciana
useradd -u 1501 -d /home/luciana -k /etc/skel2 -m -s /bin/ksh
su - luciana        # log in as luciana
ls -la              # see files from /etc/luciana

vi /etc/passwd      # see all users from the system

chsh -s /bin/false luciana   # change sthe shell user


# creatig group
groupadd -g 1600 developersgroup
cat /etc/group      # see the groups stored on the system
groupmod -g -1700 developersgroup       # modified the group id
groupmod -n developersgroup devgroup    # modified the group name
grep devgroup /etc/group                # see the modifications
groupdel devgroup               # delete the group devgroup

cat /etc/nsswitch.conf
# getent extract import information from files
getent passwd                   # see the file cat /etc/passwd
                                    
# change informations from user
usermod -s /bin/sh rafael       # change user shell
usermod -l deluca rafael        # change the user name, new name come first
grep rafael /etc/passwd         # see the users change
usermod -G groupdev rafael      # change user rafael in the groupdev
id rafael                       # see user uid, gid, groups, name
usermod --aG rafael admin       # append rafael on group admin
usermod -L rafael               # blocks the user rafael

cat /etc/shadow                # contains the encrypted passwords

# chage - changing information about expiration counts
chage -l                        # list properties of expiration 
                                # last password change, password expires, account expires,
                                # number of days of warning before password expires
chage -M 60 rafael              # password expires on 60 days
chage -W 10 rafael              # set expiration warnign days to 10

chage rafael                    # interective mode in wich you can set all expiration properties







