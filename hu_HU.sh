#!/bin/sh
mkdir -p /Library/Spelling && chown root:wheel /Library/Spelling
cd /Library/Spelling && curl -JLROO https://github.com/LibreOffice/dictionaries/raw/master/hu_HU/hu_HU.{aff,dic} && xattr -d -r com.apple.quarantine hu_HU.{aff,dic} && chown root:wheel hu_HU.{aff,dic}
