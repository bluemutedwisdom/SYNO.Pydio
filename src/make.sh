#!/bin/sh

chown -R root:root desktop pydio ui
chmod -R 444 *
chmod -R a+X *
chmod -R u+rw *
tar -czf package.tgz -X exclude.txt desktop pydio ui

chown -R root:root scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG
chmod -R 755 *
tar -cvf ../spk/Pydio-5.2.3-001.spk -X exclude.txt scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG

exit 0