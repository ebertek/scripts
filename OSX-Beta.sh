#!/bin/bash
### Developer
## 10.9 Mavericks
# https://swscan.apple.com/content/catalogs/others/index-10.9seed-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
## 10.10 Yosemite
# https://swscan.apple.com/content/catalogs/others/index-10.10seed-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
## 10.11 El Capitan
# https://swscan.apple.com/content/catalogs/others/index-10.11seed-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz

### Public AppleSeed:
# https://swscan.apple.com/content/catalogs/others/index-10.9publicseed-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
# https://swscan.apple.com/content/catalogs/others/index-10.10beta-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
# https://swscan.apple.com/content/catalogs/others/index-10.11beta-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz

### Get current URL
defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist CatalogURL

### Clear URL (reset to Apple production)
# sudo /usr/sbin/softwareupdate --clear-catalog

### Set URL
sudo /usr/sbin/softwareupdate --set-catalog "https://swscan.apple.com/content/catalogs/others/index-10.11seed-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz"
