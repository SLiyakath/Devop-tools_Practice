#!/bin/bash

for i in {1..9}
do 
	if docker container la -a | awk '{ print $NF }'	| grep C$i > /dev/null
	then
		echo "Deleting Container C$i"
		docker container rm -f C$i > /dev/null
		echo "Creating Container C$i"
		docker container run -d --name C$i -p 900$i:80 centos:7 /bin/bash
		docker container start C$i
	else 
		echo "Creating Container C$i"
                docker container run -d --name C$i -p 900$i:80 centos:7 /bin/bash
                docker container start C$i
	fi
done	
