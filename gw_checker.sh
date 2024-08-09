#!/bin/bash

# Check if /bin/bash, /usr/local/bin/worker-runner.sh, and /opt/worker/worker-runner-config.yaml (Generic Worker) are running
check_processes() {
    if ! ps aux | grep -q '[b]in/bash'; then
        return 1
    fi

    if ! ps aux | grep -q '[w]orker-runner.sh'; then
        return 1
    fi

    if ! ps aux | grep -q '[w]orker-runner-config.yaml'; then
        return 1
    fi

    return 0
}

# Reboot if it's not running
if ! check_processes; then
    echo "One or more required processes are not running. Rebooting the machine..."
    sudo reboot
else
    echo "All required processes are running."
fi