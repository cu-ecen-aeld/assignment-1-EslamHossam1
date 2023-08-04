#!/bin/bash

#check if the user passed correct arguments
if [ $# -ne 2 ]
then
	echo some agruments are not specified
	echo please enter as follow: $0 writefile writestr
	exit 1
fi

#write the arguments into variables
writefile=$1
writestr=$2

#create a file in the writefile
install -D /dev/null $writefile

#check if the file has been created
if ! [ -e $writefile ]
then
	echo file could not be created
	exit 1
fi

#write the string inside the file
echo $writestr > $writefile
