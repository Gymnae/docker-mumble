#!/bin/sh

#take the password from ENV, if none was delivered, replace with empty string
SERVERPASSWORD=${SERVERPASSWORD:-}

#insert the password
sed -i.bak 's/'REPLACEME'/'$SERVERPASSWORD'/g' /etc/mumble/config/mumble-server.ini
wait
# start the server
/opt/mumble/murmur.x86 -fg -ini /etc/mumble/config/mumble-server.ini