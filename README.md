<p align="center">
<img style="align: center; padding-left: 10px; padding-right: 10px; padding-bottom: 10px;" width="238px" height="238px" src="https://gitea.dancheg97.ru/repo-avatars/11-8ecb544b82e79f89289dcf44b63be110" />
</p>

<h2 align="center">Manjaro OS setup as dancheg97</h2>

This repository includes scripts for manjaro os software, to make this process
reproducable across different environments.

Installation assumes, that you have cloned `os` repo to `HOME` directory.

Installation process:

1. Packages, install all basic packages to get started.
2. User, set user git, shortcuts and other user relevant stuff.
3. Code, install vscode and set up it's and extensions and shortcuts.
4. Go, install golang and some usefull packages.
5. Docker - containers enhanced.
6. Set up conda and tensorflow for full usage of GPU for machine learning.

```sh
sh ~/os/scripts/packages.sh
sh ~/os/scripts/user.sh
sh ~/os/scripts/vscode.sh
sh ~/os/scripts/go.sh
sh ~/os/scripts/docker.sh
sh ~/os/scripts/conda.sh
sh ~/os/scripts/tensorflow.sh
```
