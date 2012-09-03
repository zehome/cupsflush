#!/bin/bash

if [ -z "$1" ]; then
	interval='+60'
else
	interval="+$1"
fi

# History files
/usr/bin/find /var/spool/cups -maxdepth 1 -name 'c*' -ctime "${interval}" -type f -print | /usr/bin/xargs /bin/rm 2>/dev/null
# Data files
/usr/bin/find /var/spool/cups -maxdepth 1 -name 'd*' -ctime "${interval}" -type f -print | /usr/bin/xargs /bin/rm 2>/dev/null
