#!/bin/sh
while [ "$#" -gt "0" ]
do
  echo "\$1 is $1"
  echo "\$# is $#"
  echo "\$@ = $@"
  echo 
  shift
done
