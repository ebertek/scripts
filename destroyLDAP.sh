#!/bin/bash
### sudo -s ;)
## Destroy Open Directory
slapconfig -destroyldapserver
rm -rf /Library/Preferences/OpenDirectory/

## Regenerate LKDC
security delete-certificate -c com.apple.kerberos.kdc /Library/Keychains/System.keychain
rm -rf /var/db/krb5kdc
/usr/libexec/configureLocalKDC


## Rekerberization
mkdir /var/db/openldap/migration/ 
touch /var/db/openldap/migration/.rekerberize 

# Yosemite
slapconfig -firstboot

# Mavericks
killall PasswordService
