#!/bin/bash

# Run as root

# Downloads macOS 14.5 InstallAssistant.pkg to /Applications
curl -o /Applications/InstallAssistant.pkg https://swcdn.apple.com/content/downloads/32/06/062-01946-A_0PEP7JHIWA/1pfs4xh22555dj51fkep7w06s4eiezh21p/InstallAssistant.pkg;

# Unpacks /Applications/Install macOS Sonoma.app
installer -pkg /Applications/InstallAssistant.pkg -target /;

# Clean up
rm /Applications/InstallAssistant.pkg;

# Launch installer
/Applications/Install\ macOS\ Sonoma.app/Contents/Resources/startosinstall --agreetolicense;