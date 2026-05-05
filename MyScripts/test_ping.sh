#!/bin/bash
#this script is used to test ping a site

ping -c 10 www.google.com &> /dev/null
if [ $? -eq 0 ]; then
	echo "This site is ok."
else
	echo "This site is down..!"
fi

