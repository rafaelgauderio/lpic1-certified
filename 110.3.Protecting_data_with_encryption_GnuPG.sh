#!/bin/bash

gpg --gen-key               # generatin public/private rsa key pair
    # Real name:
    # Real address: 
    # Passphrase:

gpg --full-generates-key    # generatin public/private rsa key pair.  GPG key pair with maximum influence
    # choose kind of key (RSA, DSA)
    # choose how many bit (1024 - 4096)
    # how long key is valid ( 0 = key not expire)

cd ~/.gnupg/
cd ~/.gnupg/private-keys-v1.d/                      # contains the private keys
cd ~/.gnupg/private-keys-v1.d/secring.gpg           # contains the private keys (older version)
cd ~/.gnupg/trustdb.gpg                             # contains signature keys used by other users that we trust 

cd /home/rafael
gpd --encrypt name-file.txt                         # encrypted the file
    # ask for user ID
# a new file is create name-file.txt.gpd
cat /home/rafael/name-file.txt.gpd                  # cat not see the content of the file. Its encrypted
gpd --decrypt name-file.txt.gpd                     # file are drecrypt
    # the passphrase are ask

# create a signature

gpd --detach-sign new-file.txt                      # create the file new-file.txt.sig
        # we have to send the original file and the .sig file to a user can access the file
gpt --verify new-file.txt.sig                       # verify the origin of the file



             
