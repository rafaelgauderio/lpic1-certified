#!/bin/bash

# syslogd - first loggin daemon for Linux systems
# syslog-ng 
# rsyslog - tha actual stardard loggin daemon

ps -ef | grep -i rsyslog
vi /etc/rsyslog.conf
cd /etc/rsyslog.d/              # configuration fildes on this folder
vi /etc/rsyslog/default.conf    # file with rules for logging
    # facility.level or priority        location of log files
    # autu,authpriv.*                   /var/log/auth.log
    # *.*;auth,authpriv.none            -/var/log/syslog

cd /etc/var/spool/rsyslog/       # spool and state files
ll /var/log
cat /var/log/auth.log
cd /var/log/
ll | gre -i syslog
tail -f syslog                  # display in real time what is being written to this log file
cd /var/log/syslog              # standard rsyslog log file


# logrotate = rewriting, renaming and compressing the block

vi /etc/logrotate.conf          # main configuration file
    # weekly
    # su root adm
    # rotate 4
    # create
    # include /etc/logrotate.d
cd /etc/logrotate.d/

# journal logs
cd /var/log/journal/
vim /etc/systemd/journald.conf  # journald configuration file
journalctl                      # inside into a large log file
journalctl -e                   # jump to the end of the log file
journalctl -r                   # reverse, tha latest information at the top, and the oldest at the botton
journalctl -n 30                # display the last 30 lines, similar tail
jorunalctl -f                   # display log in real time

# logger - create your own log entry

logger -t test "This is just a test"



























