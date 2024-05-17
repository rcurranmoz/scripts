#!/bin/bash

# Ryan Curran
# v1

# Retrieve current user
currentUser=$(who | awk '/console/{print $1}')

# Locates and stores the UUID
userNameUUID=$(dscl . -read /Users/$currentUser/ GeneratedUID | awk '{print $2}')

# First Prompt for PREVIOUS password
results1=$( /usr/bin/osascript -e "display dialog \"Please enter your previous password\" default answer \"\" with hidden answer buttons {\"Cancel\",\"OK\"} default button {\"OK\"}" )
theButton1=$( echo "$results1" | /usr/bin/awk -F "button returned:|," '{print $2}' )
password_old=$( echo "$results1" | /usr/bin/awk -F "text returned:" '{print $2}' )

# Second prompt for CURRENT password
results2=$( /usr/bin/osascript -e "display dialog \"Please enter your current password\" default answer \"\" with hidden answer buttons {\"Cancel\",\"OK\"} default button {\"OK\"}" )
theButton2=$( echo "$results2" | /usr/bin/awk -F "button returned:|," '{print $2}' )
password_new=$( echo "$results2" | /usr/bin/awk -F "text returned:" '{print $2}' )

# Locates and stores disk label ie: disk1s1
value_three=$(diskutil list | grep "Macintosh" | grep -v Data | awk '{print $8}')

# Does the deed
diskutil apfs changePassphrase $value_three -user $userNameUUID -oldPassphrase "$password_old" -newPassphrase "$password_new"
