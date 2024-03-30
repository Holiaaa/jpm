## 🚀 Jink Package Manager
**jpm** is a package manager designed for a old Linux distro i made from scratch!
You can use the code if you want to implement a package manager on your distro!

NOTE: This package manager work only with file, there is no way to connect to a server, if you want to do that, just implement that xD
NOTE: It can be bugged, and maybe the code is not very good :/

## Download JPM

To download the v1.0 version of jpm you need to go to the release named 'release' and download the zip file, and put the folder in your / directory
Then if you want to test to install a package you can go to the release named 'package-example' and download vim9.1.jpkg.

WARNING: You can have some issue if you try to install vim with jpm if you have already vim installed on your computer.
WARNING: You can have some bug, this code is adapted for a linux distro i made with only the kernel so :/

## How to use

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

- [@Holiaaa](https://www.github.com/Holiaaa) - Developer of Jink Linux


## License

Check LICENCE for more information.

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
