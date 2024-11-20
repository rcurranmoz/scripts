#!/bin/bash

# Directory to search
directory="/Library/ColorSync/Profiles/Displays"

# Key to match
key="28E850"

# Check if any file starts with the key
if ls "$directory"/"$key"* &>/dev/null; then
    echo "True"
else
    echo "False"
fi