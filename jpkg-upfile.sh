#!/bin/sh

# Jink Package Manager - jpkg-upfile
# This file update the package by checking the version of the installed package.
# Source code at https://github.com/jink-system/jpm
#
# Jink Linux 2Â024

# Check argument.
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

nameofpackage=$(cat "/jpm/.tmp/$packagename/PACKAGE")

if [ ! -d "/jpm/$nameofpackage" ]; then
    echo "jpm: $nameofpackage package is not found on the system"
    echo "You can install $nameofpackage by doing a jpm --install $nameofpackage"
    echo "Or install it manualy with a jpkg file : jpm --installjpkg $1"
    exit 1
fi

versionofile=$(cat "/jpm/.tmp/$packagename/jpm/$nameofpackage/VERSION")
versionifile=$(cat "/jpm/$nameofpackage/VERSION")

if [ "$versionifile" = "$versionofile" ]; then
	echo "jpm: error: $nameofpackage is already installed with the version $versionifile"
	exit 1
fi

echo "Uninstall $nameofpackage..."
jpm --remove "$nameofpackage"
jpm --installjpkg "$1"

echo "$nameofpackage is now updated to version $versionofile"
