#!/bin/bash

chrome_file=/Applications/Google\ Chrome.app/Contents/Info.plist
edge_file=/Applications/Microsoft\ Edge.app/Contents/Info.plist

# Fetch the currently logged in user
loggedInUser="$(stat -f%Su /dev/console)"

if test -f "$chrome_file"; then
    #Set Chrome to not take over ASWebAuth
    sudo -u $loggedInUser /usr/libexec/PlistBuddy -c "set :ASWebAuthenticationSessionWebBrowserSupportCapabilities:IsSupported false" /Applications/Google\ Chrome.app/Contents/Info.plist
fi

if test -f "$edge_file"; then
    #Set Edge to not take over ASWebAuth
    sudo -u $loggedInUser /usr/libexec/PlistBuddy -c "set :ASWebAuthenticationSessionWebBrowserSupportCapabilities:IsSupported false" /Applications/Microsoft\ Edge.app/Contents/Info.plist
fi
