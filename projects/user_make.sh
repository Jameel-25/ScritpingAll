#!/bin/bash

# script should be execute with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then 
	echo 'Please run with sudo or root.'
	exit 1
fi

# user should provide atleast one argument as username else guide them.
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo 'Create a user with name USER_NAME and comments field of COMMENT'
	exit 1
fi

# store 1st argument as user name
USER_NAME="${1}"

# in case of more than one arugment, store it as account comments
shift
COMMENT="${@}"

# create a password
PASSWORD=$(date +%s%N)

# create the user
useradd -c "${COMMENT}" -m $USER_NAME

# check if user is successfully created or not
if [[ $? -ne 0 ]]
then
	echo "The Account could not be created"
	exit 1
fi

# set the password for the user.
echo "${USER_NAME}:${PASSWORD}"

# chekc if password is successfully set or not
if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

# force password change on first login.
passwd -e $USER_NAME

# display the username, password, and the host where the user was created.
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)"
echo
