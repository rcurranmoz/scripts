#!/bin/bash

# Ryan Curran

# Fetch the currently logged in user
loggedInUser="$(stat -f%Su /dev/console)"

# Removes the Relocated Items shortcut from the user's desktop and /Users/Shared/
rm -rf /Users/"$loggedInUser"/Desktop/Relocated\ Items.nosync
rm -rf /Users/Shared/Relocated\ Items/