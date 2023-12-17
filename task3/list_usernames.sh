#!/bin/bash

# Script to list only usernames on a Linux system

# Get a list of all user accounts
user_list=$(cut -d: -f1 /etc/passwd)

# Print the list of usernames
echo "Usernames on the system:"
echo "$user_list"
