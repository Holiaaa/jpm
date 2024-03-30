#!/bin/sh

# Jink Package Manager - jpkg-remove file.
# This file remove jpkg package from the system.
# Source code at https://github.com/jink-system/jpm/
#
# Jink Linux 2024

# Check argument.
if [ $# -ne 1 ]; then
    echo "Usage: jpm --remove <packagename>"
    exit 1
fi

folderjpm="/jpm/$1"

# Verify if folder exist
if [ ! -d "$folderjpm" ]; then
    echo "jpm: $1 package is not found on the system"
    echo "Try use jpm --list to get all package installed on the system."
    exit 1
fi

cd "$folderjpm"

# Name of the jpkglist file.
packagename="$1.jpkglist"

# Verify if jpkglist file exist
if [ ! -f "$packagename" ]; then
    echo "jpm: error: jpkglist file not found! Try reinstalling the package or remove it manualy."
    exit 1
fi

# Remove all package file
while IFS= read -r ligne || [ -n "$ligne" ]; do
    # Exclude all line that start by #
    if [ "${ligne:0:1}" != "#" ]; then
        # Remove file
        rm -rf "$ligne"
        if [ $? -eq 0 ]; then
            echo "$ligne : deleted"
        else
            echo "$ligne : unable to delete this file/directory"
        fi
    else
        echo "$ligne : ignored."
    fi
done < "$packagename"

packages_file="/jpm/packages"
package_name="$1"

# Remove the package name from the packages file
if grep -Fxq "$package_name" "$packages_file"; then
    sed -i "/$package_name/d" "$packages_file"
    echo "Package $package_name removed from $packages_file"
else
    echo "Package $package_name is not listed in $packages_file"
    exit 1
fi

# Remove the last folder.
rm -rf "$folderjpm"
