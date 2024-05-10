#!/bin/zsh

# Installs Puppet Agent on ARM Macs

curl https://downloads.puppetlabs.com/mac/puppet7/13/arm64/puppet-agent-7.26.0-1.osx13.dmg -o /Users/Shared/puppet.dmg;
hdiutil attach /Users/Shared/puppet.dmg;
installer -package /Volumes/puppet-agent-7.26.0-1.osx13/puppet-agent-7.26.0-1-installer.pkg -target /;
hdiutil detach /Volumes/puppet-agent-7.26.0-1.osx13;
rm /Users/Shared/puppet.dmg;