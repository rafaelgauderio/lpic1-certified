#!/bin/bash


# ssh [server_name]
# ssh [IP_address]

# establishing a connection between server and client
# server - 192.168.0.254
sudo su -
apt install openssh-server
systemclt status sshd           # active (running)
sudo useradd -u 1545 -d /home/admin -m -c "creating user admin" -s /bin/bash admim
# ssh run in port 22 by default
ssh -p 25000 -l admin@192.168.0.254          # changing port t0 25000
ssh -o port=25000 -l admin@192.168.0.254     # changing port t0 45000
scp new-file.txt rafael rafael@192.168.0.254:/home/rafael       # copy file new-file.txt to server

vi /etc/ssh/sshd_config                       # main configurantion file of ssh SERVER
    # Include /etc/ssh/sshd_config.d/*.conf
    # ListenAddress 192.168.0.254
    # PermitRootLogin prohibit-password
systemctl restart sshd

# CLIENT
ssh 192.168.0.254
    # yes
    # type password
exit                            # connection to 192.168.0.254 closed
sudo - admin                    # log in as admin user
ssh admin@192.168.0.254         # log in the server as admin (connectiong refuse if the user doesn´t not exist in server)
sudo userdel admin              # del the user admin on the CLIENT computer
ssh -l admin@192.168.0.254      # connection ok if the admin user still exists on server
exit

vi /etc/ssh/ssh_config          # main configurantion file of ssh CLIENT
    # Include /etc/ssh/sshd_config.d/*.conf
    # Host *
    # ForwardX11 yes            # graphic application

# ENCRYPTION with ssh

vi ~/.ssh/Known_hosts           # correspondig host key
man ssh-keygen
# ssh-keygen = OpenSSH authentication key utility
        # generates, manages and converts authentication keys for ssh

ssh-keygen -l -f ~/.ssh/Known_hosts         # -l stands for list, -f stand for file
                                            # display the fingerprint or host key

vi /etc/ssh/ssh_known_hosts                 # == vi ~/.ssh/Known_hosts 


# now in the SERVER
cd /etc/ssh
ll                                  # display diffent types of keys user to protect ssh connections
vi /etc/ssh/ssh_host_rsa_key        # contais the PRIVATE key
vi /etc/ssh/ssh_host_rsa_key.pub    # contais the PUBLIC key

# client request the public key from the server
# with the private key the server decrypt the encrypted key again

sudo ssh-keygen -b 4096 -t rsa            # -b stands for number of bits, -t stands for encryption type
    # generatin public/private rsa key pair
    # enter passphrase
vi /etc/ssh/sshd_config
    # HostKey /etc/ssh/ssh_host_rsa_key
systemctl restart sshd

# Back in the CLIENT
ssh 192.168.0.254                       # error message. can not connect
ssh-keygen -f "home/rafael/.ssh/known_hosts" -R "192.168.0.254"     # update the Known_hosts file
ssh 192.168.0.254                       # now the connection works 

# CREATING AND INTEGRATE NEW KEYS

# in the client
ssh-keygen -t rsa
    # generatin public/private rsa key pair
    # enter passphrase

ssh-copy-id 192.168.0.254               # ssh copy id tool
    # enter the password
    # key(s) are add on the server

ssh 192.168.0.254                       # log in without asking password, because of the authorized_keys filed created on the server

# ssh agent used to authenticated without enter a password
ssh-add ~/.ssh/id_rsa
ssh-add -l                              # list the private key
ssh-add -L                              # list the public key
ssh-add -l [specif_key]                 # remove the key
shh-add -L                              # remove all the keys 



# in the server 
ll ~/.shh                               # show the authorized_keys file




















             
