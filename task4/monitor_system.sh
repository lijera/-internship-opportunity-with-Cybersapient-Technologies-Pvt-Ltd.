#!/bin/bash

# Script to display current CPU, memory, and disk space

# Display current CPU usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'

# Display current memory usage
echo -e "\nMemory Usage:"
free -h | awk '/^Mem:/ {print "Total: " $2, " | Used: " $3, " | Free: " $4}'

# Display current disk space
echo -e "\nDisk Space:"
df -h
