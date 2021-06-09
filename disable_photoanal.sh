#!/bin/bash
launchctl disable gui/$UID/com.apple.photoanalysisd && launchctl kill -TERM gui/$UID/com.apple.photoanalysisd
launchctl disable user/$(UID)/com.apple.photoanalysisd && launchctl kill -TERM user/$(UID)/com.apple.photoanalysisd
launchctl disable user/$(id -u)/com.apple.photoanalysisd
launchctl enable user/$(id -u)/com.apple.photoanalysisd

# launchctl print user/$(id -u)

sudo rm /System/Library/LaunchAgents/com.apple.photoanalysisd.plist
