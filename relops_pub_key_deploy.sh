#!/bin/bash

# Define the directories to check
dirs=("/Users/relops" "/Users/admin" "/Users/administrator")

# Define the SSH key to add
ssh_key="ADD_KEY_HERE"

# Loop through each directory and perform actions if it exists
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        echo "Directory $dir exists."
        
        # Create .ssh directory if it doesn't exist
        ssh_dir="$dir/.ssh"
        if [ ! -d "$ssh_dir" ]; then
            mkdir "$ssh_dir"
            echo "Created directory $ssh_dir."
        fi
        
        # Set appropriate permissions
        chmod 700 "$ssh_dir"
        
        # Create or append the authorized_keys file
        auth_keys="$ssh_dir/authorized_keys"
        if [ ! -f "$auth_keys" ]; then
            touch "$auth_keys"
            echo "Created file $auth_keys."
        fi
        
        # Append the SSH key to the authorized_keys file if it's not already present
        if ! grep -q "$ssh_key" "$auth_keys"; then
            echo "$ssh_key" >> "$auth_keys"
            echo "Added SSH key to $auth_keys."
        else
            echo "SSH key already exists in $auth_keys."
        fi

        # Set appropriate permissions for authorized_keys
        chmod 600 "$auth_keys"
    else
        echo "Directory $dir does not exist."
    fi
done