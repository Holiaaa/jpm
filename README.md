## 🚀 Jink Package Manager
**jpm** is a package manager designed for a old Linux distro i made from scratch!
You can use the code if you want to implement a package manager on your distro!

NOTE: This package manager work only with file, there is no way to connect to a server, if you want to do that, just implement that xD
NOTE: It can be bugged, and maybe the code is not very good :/

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
