#!/bin/sh
/usr/local/bin/my-command
# $? - saves last executed command exit code, 0 - is okey exit code
echo $?
#now the last executed command would be echo so code is 0
if [ "$?" -ne "0" ]; then
	#here last executed command probably would be test('[')
  	echo $?
	echo "Sorry, we had a problem there!"
fi
