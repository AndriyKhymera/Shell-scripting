#!/bin/sh
#quotes used around whoami command called backsticks
#running command using backstics performet is a subshell
#so for example cd or setting some variables won't affect currently running shell
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "Your name is : $myname"
