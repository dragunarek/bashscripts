#!/bin/bash

echo "#########################################################"

sudo ls /var/run/apache2/apache2.pid > /dev/null

if [ $? -eq 0 ]
then
	echo "Apache2 process is running"
else 
	echo "Apache2 process is NOT running"
	echo "Starting process."
	sudo systemctl start apache2
	if [ $? -eq 0 ]
	then
		echo "Apache2 process is running"
	else
		echo "Apache2 process still NOT running. Contact the admin."
	fi
fi

echo "######################################################################"
echo
