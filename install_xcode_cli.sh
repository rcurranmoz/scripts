#!/bin/zsh

# Installs Xcode CLI Tools

xcode-select -p &> /dev/null;
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
PROD=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //');
softwareupdate -i "$PROD" --verbose;