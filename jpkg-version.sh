#!/bin/sh

# Jink Package Manager - jpkg-version file.
# This file show the version of a package.
# Source code at https://github.com/jink-system/jpm/
#
# Jink Linux 2024

if [ $# -ne 1 ]; then
    echo "Usage: jpm --version <packagename>"
    exit 1
fi

folderjpm="/jpm/$1"

# Verify if folder exist
if [ ! -d "$folderjpm" ]; then
    echo "jpm: $1 package is not found on the system"
    echo "Try use jpm --list to get all package installed on the system."
    exit 1
fi

versionoffile=$(cat "/jpm/$1/VERSION")

echo "jpm: $1 package version is $versionoffile"
exit 0
