#!/bin/bash
### Developer
## 10.8 Mountain Lion
# MTL="https://swscan.apple.com/content/catalogs/others/index-mountainlionseed-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog"
## 10.9 Mavericks
# MAV="https://swscan.apple.com/content/catalogs/others/index-10.9seed-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz"
## 10.10 Yosemite
# YOS="https://swscan.apple.com/content/catalogs/others/index-10.10seed-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz"
## 10.11 El Capitan
# CAP="https://swscan.apple.com/content/catalogs/others/index-10.11seed-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz"
## 10.12 Sierra
SIE="https://swscan.apple.com/content/catalogs/others/index-10.12seed-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz"

### Public AppleSeed:
## 10.9 Mavericks
# https://swscan.apple.com/content/catalogs/others/index-10.9publicseed-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
## 10.10 Yosemite
# https://swscan.apple.com/content/catalogs/others/index-10.10beta-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
## 10.11 El Capitan
# https://swscan.apple.com/content/catalogs/others/index-10.11beta-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
## 10.12 Sierra
# https://swscan.apple.com/content/catalogs/others/index-10.12beta-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz

### Apple production
## Apple Software Update for Windows
# http://swcatalog.apple.com/content/catalogs/others/index-windows-1.sucatalog
## Default
# http://swscan.apple.com/content/catalogs/index.sucatalog
## 10.3 Panther
# http://swscan.apple.com/scanningpoints/scanningpointX.xml
## 10.4 Tiger
# http://swscan.apple.com/content/catalogs/index-1.sucatalog
## 10.5 Leopard
# http://swscan.apple.com/content/catalogs/others/index-leopard.merged-1.sucatalog
## 10.6 Snow Leopard
# http://swscan.apple.com/content/catalogs/others/index-leopard-snowleopard.merged-1.sucatalog
## 10.7 Lion
# http://swscan.apple.com/content/catalogs/others/index-lion-snowleopard-leopard.merged-1.sucatalog
## 10.8 Mountain Lion
# http://swscan.apple.com/content/catalogs/others/index-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog
## 10.9 Mavericks
# https://swscan.apple.com/content/catalogs/others/index-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog
## 10.10 Yosemite
# https://swscan.apple.com/content/catalogs/others/index-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog
## 10.11 El Capitan
# https://swscan.apple.com/content/catalogs/others/index-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog
## 10.12 Sierra
# https://swscan.apple.com/content/catalogs/others/index-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog


### Get current URL
echo "Current catalog:   `defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CatalogURL`"

### Clear URL (reset to Apple production)
# sudo defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL
# sudo /usr/sbin/softwareupdate --clear-catalog

### Set URL
# sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL $SIE
sudo /usr/sbin/softwareupdate --set-catalog "$SIE"

### List all available updates
# open macappstore://showUpdatesPage
softwareupdate -l
