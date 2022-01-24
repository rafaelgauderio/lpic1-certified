#!/bin/bash

# ASCII - American Standard Code for Information Interchange
# ISO/IEC 8859-1
# unicode
# UTF-8 Unicode = today standard character

file nameOfTheFile      # UFT-8 Unicode text = display file character type

iconv -l                # display iconv fonts
                        # convert files from a type to a type to another type character
touch filecharacterset
iconv -f UTF-8 -t ASCII filecharacterset > filecharacterset-ascii

# language and country settings
sudo dpkg-reconfigure locales
echo $LANG      # display the language, countr = en_US.UTF-8
date            # display the date and time
date +"%x"      # display 01/22/2022

LC_TIME=en_US.UTF-8
echo $LC_TIME

locale          # command works with the environmental variables that define the internationalization
                # of the system, such as characters, dates and numbering
locale -a       # display all locates available on the system
cd /usr/bin/locale

locale -k LC_IDENTIFICATION

# this environment variable contain information such as speficic data must be formatted
LANGUAGE=de_DE.UTF-8:en_US.UTF-8
echo $LANGUAGE 
echo $LC_CTYPE
echo $LC_COLLATE
echo $LC_MONETARY
echo $LC_PAPER
echo $LC_NAME
echo $LC_ADDRESS
echo $LC_TELEPHONE
echo $LC_ALL            # override all the espefifications, has priority over LANG variable

sudo vi /etc/default/locale         # file with definitions of variables above

# timezones

cat /etc/timezone          

ll /usr/share/zoneinfo

cat /etc/localtime              # does not open
file /etc/localtime             # symbolic link to /usr/share/zoneinfo/America/Brasilia

tzselect                        # select the timezone by a console options
echo $TZ

sudo dpkg-reconfigure tzdata    # graphic query to choose timezone

timedatectl                     # display Local Time, Univesal time, Time zone...
timedatectl list-timezones
timedatectl set-timezone Europe/Amsterdam
timedatectl set-timezone America/Sao_Paulo
cat /etc/timezone

man timedatectl
timedatectl set-time '23:15:00 2020-06-05'



