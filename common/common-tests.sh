#!/bin/bash


#test weather string variable length is zero -with -z
awsRegionId=$1

if [ -z ${awsRegionId} ]; then
	echo "It's empty"
else
	echo "It's not empty"
fi
