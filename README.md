## 🚀 Jink Package Manager
**jpm** is a package manager designed for a old Linux distro i made from scratch!
You can use the code if you want to implement a package manager on your distro!

NOTE: This package manager work only with file, there is no way to connect to a server, if you want to do that, just implement that xD
NOTE: It can be bugged, and maybe the code is not very good :/

## Download JPM

To download the v1.0 version of jpm you need to go to the release named 'release' and download the zip file, and put the folder in your / directory
Then if you want to test to install a package you can go to the release named 'package-example' and download vim9.1.jpkg.

- WARNING: You can have some issue if you try to install vim with jpm if you have already vim installed on your computer.
- WARNING: You can have some bug, this code is adapted for a linux distro i made with only the kernel so :/

## How to make a jpkg file

First a jpkg file is a TAR.XZ archived file.

To make one you need to make a folder (example : vim), and put every folder into the folder. (bin, usr, lib...).

Because the script will basically copy every folder in the archive into the / directory.

File structure you need to have inside the folder : 

```
./INSTALL.sh
./jpm
./jpm/vim
./jpm/vim/LICENCE
./jpm/vim/README.txt
./jpm/vim/VERSION
./jpm/vim/vim.jpkglist
./PACKAGE
./usr
./usr/bin
./usr/bin/ex
./usr/bin/rview
./usr/bin/rvim
./usr/bin/view
./usr/bin/vim
./usr/bin/vimdiff
./usr/bin/vimtutor
./usr/share
./usr/share/man
./usr/share/man/da
./usr/share/man/da/man1
./usr/share/man/da/man1/ex.1
(Other file)...
```

- The `INSTALL.sh` file is a script that jpm will launch after extracting the content of the archive.
- The `PACKAGE` file contain the package name. (example for vim9.1.jpkg : vim)
- Inside the `jpm` folder you have the package folder (SAME NAME AS PACKAGE FILE)
- Inside it you have the VERSION file (for jpm --version <package-name>)
- The `vim.jpkglist` contain all the file of the archive. All line starting by # are gonna be ignored in the delete process.

## How to use jpm

#### - Install a jpkg file.

```sh
jpm --installjpkg package.jpkg
```

| Option | Description     |
| :-------- | :------- | 
| `--installjpkg` | `This will install the jpkg file in the system.` |

#### - Remove a package.

```sh
jpm --remove nameofpackage
```
| Option | Description     |
| :-------- | :------- | 
| `--remove` | `This will remove the package from the system.` |


#### - Install an update from a jpkg file.

```sh
jpm --upfile package.jpkg
```
| Option | Description     |
| :-------- | :------- | 
| `--upfile` | `This will install the update on the system.` |


#### - Get the version.

```sh
jpm --version nameofpackage
```
| Option | Description     |
| :-------- | :------- | 
| `--version` | `This will return the version of the package` |


## Authors

- [@Holiaaa](https://www.github.com/Holiaaa) - Developer


## License

Check LICENCE for more information.

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
