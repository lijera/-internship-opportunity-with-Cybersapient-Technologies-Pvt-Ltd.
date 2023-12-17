#!/bin/bash

# This script deletes empty directories in the specified path

if [ -z "$1" ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

directory_path="$1"

find "$directory_path" -type d -empty -delete

echo "Empty directories in '$directory_path' deleted successfully."
