#!/bin/bash

# Ryan Curran

# Fetch the currently logged in user
loggedInUser="$(stat -f%Su /dev/console)"

# Disables Cross Site Tracking Prevention in Safari.app. Set BlockStoragePolicy to 2 to enable
sudo -u $loggedInUser defaults write /Users/$loggedInUser/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist BlockStoragePolicy 1
