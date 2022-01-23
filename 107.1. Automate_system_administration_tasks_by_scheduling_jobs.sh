#!/bin/bash

# cron = demon that can automate recurring tasks, runs on background

cd /etc/cron.d
cd /var/spool/cron
vi /etc/crontab
    # this file have 7 columns: minutos, hours, day, months, day of the week, user, comand to be executed
    # * on the column means every day, hour, month, etc
    # sunday=0 or 7, Monday=1 ...

crontab -e          # choose de editor
# m h   dom mon dow     command
# 8 23  *   *   *       mkdir /home/rafael/crontab-test
crontab -l          # display current crontab configuration
crontab -r          # delete current crontab configuration

sudo vi /etc/cron.allow              # users allowed to use crontab. Take precedence over etc/cron.deny
                                     # create a empty file cron.allow no user will be able to use crontab
sudo vi /etc/cron.deny               # users not alllowed to use crontab




