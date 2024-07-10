#!/bin/bash

# Get the free space on the main hard drive
FREE_SPACE=$(df -h / | grep '/' | awk '{print $4}')

# Output the free space
echo "$FREE_SPACE"