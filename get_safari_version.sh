#!/bin/zsh

# Gets the current version of Safari.app

/usr/libexec/PlistBuddy -c "print :CFBundleShortVersionString" /Applications/Safari.app/Contents/Info.plist;