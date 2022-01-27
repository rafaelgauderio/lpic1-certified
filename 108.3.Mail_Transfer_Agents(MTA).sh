#!/bin/bash

# program to transmit emails
# MUA (Mail User agent) = client
# MDA(Mail Delivery Agent) = Server
# MTA (Mail Tranfer Agent) = transfer agent accepts the incomes and forwards them to the correct target server
    # MDA = (maildrop, cyrus, procmail)
    # MTA = (postfix, sendmail, exim)

sudo su -
apt install sendmail
apt install poxtfix
vi /etc/aliases
    # tommy: rafael
    # root: rafael
    # employees:: incluse:/home/rafael/ouremployees
newaliases             # now new alias can be used to send email
sendmail -bi           # sudo newaliases

vim ~/.forward
        # test@gmail.com

vi /etc/mail/sendmail.cf            # configuration file of sendmail
vi /etc/postfix/main.cf             # configuration file of postfix

cd /var/spool/mail                  # store user files that receive email
cd /var/spool/mqueue                # store tue print queue of mails
mailq                               # display current mail queue
    # Mail queue is empty

cd /var/spool/postfix               # directory structure of postfix




















