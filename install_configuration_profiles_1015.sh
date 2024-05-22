#!/bin/bash

# Sometimes SimpleMDM fails to apply configuration profiles
# Rough workaround
# Run as root

cd;
git clone https://github.com/rcurranmoz/profiles.git;
profiles install -path=profiles/Disable\ Screen\ Saver.mobileconfig;
profiles install -path=profiles/Power\ Management.mobileconfig;
profiles install -path=profiles/Skip\ Setup\ Assistant.mobileconfig;
profiles install -path=profiles/Software\ Update\ Policy.mobileconfig;