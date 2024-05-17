#!/bin/bash

sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart \
 -activate -configure -access -on \
 -configure -allowAccessFor -allUsers \
 -configure -restart -agent -privs -all;