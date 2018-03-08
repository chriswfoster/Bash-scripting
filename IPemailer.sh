#!/bin/sh -e
#
# sudo /path/to/THISFILENAME in rc.local
#

#THIS SCRIPT WAITS 5 seconds and sends an email, can be altered to send multiple emails with little effort.

_IP=$(hostname -I) || true
for i in {1..5}
do
if [ "$_IP" ]; then

# I chose to sleep here, giving the script enough time to register an IP
sleep 5 
echo "Subject: Pi IP: $_IP" | ssmtp chriswfoster@gmail.com
fi
done
exit 0
