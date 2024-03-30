#!/bin/sh

# Jink Package Manager - jpkg-install file.
# This file install local jpkg package in the system.
# Source code at https://github.com/jink-system/jpm
#
# Jink Linux 2024


if [ $# -ne 1 ]; then
	echo "Usage: jpm --install <package.jpkg>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "jpm: $1 doesn't exit"
	exit 1
fi

packagename=$(basename "$1" .jpkg)

mkdir -p "/jpm/.tmp/$packagename"

echo "Unpacking $packagename ..."

tar -xf "$1" -C "/jpm/.tmp/$packagename"

package_content=$(cat "/jpm/.tmp/$packagename/PACKAGE")

if grep -qFx "$package_content" /jpm/packages; then
    echo "jpkg-install: error: $packagename is already installed on the system."
    rm -rf "/jpm/.tmp/$packagename"
    exit 1
fi

echo "Installing $packagename ..."

if [ -f "/jpm/.tmp/$packagename/INSTALL.sh" ]; then
	chmod +x "/jpm/.tmp/$packagename/INSTALL.sh"
	sh "/jpm/.tmp/$packagename/INSTALL.sh"
	rm -f "/jpm/.tmp/$packagename/INSTALL.sh"
fi

cp -r /jpm/.tmp/$packagename/* /

rm -rf "/jpm/.tmp/$packagename/"
echo "$package_content" >> /jpm/packages
echo "$package_content is installed."
rm -f /PACKAGE
