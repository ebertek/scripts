#!/bin/bash
# Intel's SpeedStep throttles the CPU if it's too hot, or if the battery goes below 5% (if you see kernel_task using a lot of CPU Time while your battery is low, it's probably just SpeedStep doing its job). If you have a faulty battery, this might get very annoying. You can (probably) #fuckspeedstep by deleting the configuration file specific to your Mac's model. This is not recommended, and might cause other problems, so continue only if you know what you're doing.
# Legacy models:
#  MacBook1,1 - 7,1
#  MacBookAir1,1 - 4,2
#  MacBookPro1,1 - 8,3
#  MacPro1,1 - 5,1
#  Macmini3,1 - 5,3
#  Xserve3,1
#  iMac8,1 - 12,2
sudo rm -f /System/Library/Extensions/IOPlatformPluginFamily.kext/Contents/PlugIns/ACPI_SMC_PlatformPlugin.kext/Contents/Resources/`sysctl -n hw.model | tr , _`.plist

# Newer models:
#  MacBookAir5,1 - 6,2
#  MacBookPro9,1 - 11,3
#  MacPro6,1
#  Macmini6,1 - 6,2
#  iMac13,1 - 14,4
sudo rm -f /System/Library/Extensions/IOPlatformPluginFamily.kext/Contents/PlugIns/X86PlatformPlugin.kext/Contents/Resources/`ioreg -l -d2 | grep board-id | sed -e 's/.*<"//' -e 's/">//'`.plist


# In Recovery Mode:
nvram boot-args=kext-dev-mode=1
touch /Volumes/Macintosh\ HD/System/Library/Extensions
kextcache -prelinked-kernel /Volumes/Macintosh\ HD/System/Library/Caches/com.apple.kext.caches/Startup/kernelcache -K /Volumes/Macintosh\ HD/System/Library/Kernels/kernel /Volumes/Macintosh\ HD/System/Library/Extensions

# OS X 10.10 and later requires all .kexts to be signed. If your Mac does not boot after removing the .plist files, just enter OS X Recovery (⌘R at startup), launch Terminal from the menu, and enter the commands above.

# In OS X 10.11 and later, you have to uncheck “Enforce System Integrity Protection” in OS X Recovery > Utilities > Security Configuration.
