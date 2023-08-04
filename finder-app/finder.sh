#i/bin/bash

#check the number of arguments entered
if [ $# -ne 2 ]
then
	echo Some arguments are not specified
	echo Please enter as follow: $0 filesdir searchstr
	exit 1
fi

#insert the arguments into two variables
filesdir=$1
searchstr=$2

#check if the filedir exist
if ! [ -d $1 ]
then
	echo filesdir does not represent a directory on the filesystem
	exit 1
fi

#X is number of files in the directory of subdirectories
X=$(find $filesdir -type f | wc -l)

#Y is the number of matching lines found in respective files
Y=$(grep -r  "$searchstr" $filesdir | wc -l)

echo The number of files are $X and the number of matching lines are $Y

