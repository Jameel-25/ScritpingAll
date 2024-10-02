#!/bin/bash

# script should be executed with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then
        echo 'Please run with sudo or root.'
        exit 1
fi

# user should provide at least one argument as username else guide them.
if [[ "${#}" -lt 1 ]]
then
        echo "Usage: ${0} USER_NAME [COMMENT]..."
        echo 'Create a user with the name USER_NAME and a comment field of COMMENT'
        exit 1
fi

# store 1st argument as username
USER_NAME="${1}"

# in case of more than one argument, store it as account comments
shift
COMMENT="${@}"

# create a random password (can also use openssl if available)
PASSWORD=$(date +%s%N | sha256sum | head -c12)

# create the user with the comment field
useradd -c "${COMMENT}" -m "${USER_NAME}"

# check if the user is successfully created or not
if [[ "${?}" -ne 0 ]]
then
        echo "The account could not be created."
        exit 1
fi

# set the password for the user.
echo "${USER_NAME}:${PASSWORD}" | chpasswd

# check if the password was successfully set or not
if [[ "${?}" -ne 0 ]]
then
        echo "Password could not be set."
        exit 1
fi

# force password change on first login and suppress output
passwd -e "${USER_NAME}" > /dev/null 2>&1

# display the username, password, and the host where the user was created
echo
echo "Username: ${USER_NAME}"
echo "Password: ${PASSWORD}"
echo "Hostname: $(hostname)"
echo
