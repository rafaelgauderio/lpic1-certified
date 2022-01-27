#!/bin/bash

# cups = Commom Unix printing system = print manager that can be used via the web
    # manage the print queue = spooler

cd /var/spool/cups

lp              # send jobs to a printer
# lpr = atualization of lp command
man lpr         # print files


# in the web browser
    # localhost:631         # add a printer on web interface

lpr -P name_of_printer name_of_file

lpq -a                      # display everything on the print queue
lpq -P name_of_printer      # display the queue of a specific printer
lprm -P name_of_printer job_number          # remove the jog from the print queue

lpc                         # prompt console to manage cups
    # status

cd /etc/printcap            # data about installed printer
lpdamin                     # install and configure printers by command line

cd /etc/cups                # folder with cups configuration files
vi /etc/cups/cupsd.conf













