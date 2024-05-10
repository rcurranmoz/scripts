#!/bin/zsh

# Run as root

# Installs Xcode 15.2

# Download Xcode from S3
curl -o /Users/Shared/Xcode_15.2.xip https://ronin-puppet-package-repo.s3.us-west-2.amazonaws.com/macos/public/common/Xcode_15.2.xip;

# Navigate to directory where you want Xcode to uncompress to
cd /Applications/;

# Uncompress
xip -x /Users/Shared/Xcode_15.2.xip;

# Clean up
rm /Users/Shared/Xcode_15.2.xip;

# Accepts the Xcode license
/usr/bin/xcodebuild -license accept;

# Installs additional components needed by Xcode.app on first launch
/usr/bin/xcodebuild -runFirstLaunch;

# Installs iOS simulators
xcodebuild -downloadPlatform iOS;