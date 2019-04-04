#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called $USER_NAME_file"
#wrong no variable exists
#touch $USER_NAME_file
#if no quoutes used then in case variable would containe spaces few files would be created
touch ${USER_NAME}_file
#in this case only one file would be created
touch "${USER_NAME}_file"
