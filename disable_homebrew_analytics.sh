#!/bin/bash

# 2020

#Set the currently logged in user
anumber="$(stat -f%Su /dev/console)"

#Disables anonymized Google Analytics
su -l "$anumber" -c "/usr/local/bin/brew analytics off"