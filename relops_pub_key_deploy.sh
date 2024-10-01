#!/bin/bash

# Define the directories to check
dirs=("/Users/relops" "/Users/admin" "/Users/administrator")

# Define the SSH key to add
ssh_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDKQ5aTrL2DDI4LkvsXoR/sI94fPPExjRjLtt1QttaMUr6KETpBn0V43GqdKSzLNuv0iSbNYSCDwfe7TrNVxZ4oo7LpF6jAa0QOQVT1xCKNFITqkK/uR2ECJFVbZ/GP8oN+HrESvaRl0oglR/eGzxQcOiiZgAXUSasIe0FamVGPu46T4ski6A3bUTRG9Pjmy4m0KVjarIcphtybvyNpiicwDMicsJyDNbQw2tgZJNZgyewx7Y5OYSRJRTgHUxqrjUu3ZprmUleRMAP/Xez37Sc1GyE7m+hh2pK7lQSgIUd7bSwZW1iM8fr0KJ8CpFRi9jCFbI/WS6u3cF2ygeMQlX0/SGivn+AgHo5LoXzL2p7ib5zRJn7OuwFuCavuCPkJe1kISdQU+Xmm9vFCzXpiCx6dApuUcZdTGU+dnYzij9EqppHUDKonFV+Rq+Eqd43J8FMyIVIU6E/mEQh96dsKXADZhaji6i5T+E2v5Rd9AvGDcfYreVj2IzUF78CP9M5bhb7CZ/Nz+3GKc89mqqNBQrTFPLWA4NoECrlTGNiy83SZ8XcINiXdGFMEP8JBuKiPZAezHqWJgYdHa5p6zvzJDU8mbdkJ1kbpdy0WC/YGB9qkSaxIxk3s1jg1Rlm96jeP79OyGLPzO4CwOhFqQbOpcvmgwz+gG6oZwae0gX30DQoBxw=="

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
        
        # Set appropriate permissions and ownership
        chmod 700 "$ssh_dir"
        chown "$(basename "$dir")" "$ssh_dir"
        chgrp staff "$ssh_dir"
        
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

        # Set appropriate permissions and ownership for authorized_keys
        chmod 600 "$auth_keys"
        chown "$(basename "$dir")" "$auth_keys"
        chgrp staff "$auth_keys"
    else
        echo "Directory $dir does not exist."
    fi
done