#!/bin/bash

# add something like this to ~/.zhrc or ~/.bash_profile for
# ease of use
# alias sound="/Users/rcurran/git/scripts/sound_enable.sh"

# Read the current value of comfortSoundsEnabled
current_value=$(defaults read com.apple.ComfortSounds comfortSoundsEnabled 2>/dev/null)

# Toggle the value
if [ "$current_value" = "1" ]; then
  new_value="false"
else
  new_value="true"
fi

# Apply the new value
defaults write com.apple.ComfortSounds comfortSoundsEnabled -bool "$new_value"

# Restart the service
launchctl kill SIGHUP gui/501/com.apple.accessibility.heard