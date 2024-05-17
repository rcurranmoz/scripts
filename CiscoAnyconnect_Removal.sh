#!/bin/bash

# Runs Cisco Uninstaller and removes Cisco profile directory
# Run as root

bash /opt/cisco/anyconnect/bin/vpn_uninstall.sh && rm -rf /opt/cisco/
