#!/bin/sh
# Example of function using

add_user(){
username=$1
if [ -n $username ] 
then
	echo "Username $user_name is set"
else 
	echo "Enter user's name"
	read $user_name
fi

password=$2
if [ -n $password ]; then
	echo "User's $user_name password is set"
else
	echo "Enter users password"
	read $password
fi

echo "Creeated user $user_name with password $password"
}

add_user usernmaehere passwordhhere 
