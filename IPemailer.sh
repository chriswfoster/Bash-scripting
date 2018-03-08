#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# Print the IP address

_IP=$(hostname -I) || true
for i in {1..5}
do
if [ "$_IP" ]; then
sleep 5
echo "Subject: Pi IP: $_IP" | ssmtp chriswfoster@gmail.com
fi
done
exit 0
