#!/bin/bash

# Enable SSH by loading the launch daemon
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

# Check if SSH is enabled
if sudo launchctl list | grep -q "ssh"; then
    echo "SSH has been enabled successfully."
else
    echo "Failed to enable SSH."
    exit 1
fi

# Enable firewall if not already enabled
firewall_status=$(sudo /usr/libexec/ApplicationFirewall/socketfilterfw --getglobalstate)
if [[ $firewall_status == *"disabled"* ]]; then
    echo "Enabling firewall..."
    sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
fi

# Allow SSH through the firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /usr/libexec/sshd-keygen-wrapper
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp /usr/libexec/sshd-keygen-wrapper

echo "SSH is enabled and allowed through the firewall."