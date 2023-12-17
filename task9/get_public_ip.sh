#!/bin/bash

# This script prints the public IP address of the local machine

# Using an external service to determine the public IP
public_ip=$(curl -s https://api64.ipify.org?format=json | jq -r .ip)

echo "Public IP Address: $public_ip"
