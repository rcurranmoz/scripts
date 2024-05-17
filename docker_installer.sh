#!/bin/bash

# Ryan Curran


/usr/bin/curl https://download.docker.com/mac/stable/Docker.dmg --output /Users/Shared/Docker.dmg;
/usr/bin/hdiutil attach /Users/Shared/Docker.dmg;
/bin/cp -r /Volumes/Docker/Docker.app /Applications/;
/usr/sbin/diskutil unmount /Volumes/Docker/;
/bin/rm /Users/Shared/Docker.dmg;