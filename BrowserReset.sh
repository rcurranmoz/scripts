#!/bin/bash

# 2021

# Kills Chrome and Safari
killall Safari && killall Google\ Chrome

# Removes the files
rm -rf /Users/$3/Library/Caches/Google/Chrome
# This doesnt appear to be permitted by the root or local user so it fails
# rm -rf /Users/$3/Library/Caches/com.apple.Safari
rm -rf /Users/$3/Library/Caches/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
rm -rf /Users/$3/Library/Caches/Metadata/Safari; \
rm -rf /Users/$3/Library/Caches/com.apple.WebKit.PluginProcess; \
# Same with this line
# rm -rf /Users/$3/Library/Cookies/Cookies.binarycookies; \
rm -rf /Users/$3/Library/Preferences/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
rm -rf /Users/$3/Library/Preferences/com.apple.Safari.LSSharedFileList.plist; \
rm -rf /Users/$3/Library/Preferences/com.apple.Safari.RSS.plist; \
rm -rf /Users/$3/Library/Preferences/com.apple.Safari.plist; \
rm -rf /Users/$3/Library/Preferences/com.apple.WebFoundation.plist; \
rm -rf /Users/$3/Library/Preferences/com.apple.WebKit.PluginHost.plist; \
rm -rf /Users/$3/Library/Preferences/com.apple.WebKit.PluginProcess.plist; \
rm -rf /Users/$3/Library/PubSub/Database; \
rm -rf /Users/$3/Library/Saved\ Application\ State/com.apple.Safari.savedState

