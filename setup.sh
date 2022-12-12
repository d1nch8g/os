#!/bin/bash

# git

git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg97"
git config --global credential.helper store
git config --global http.sslVerify false

# shortcuts

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['']"
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Super>Tab', '<Alt>Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-applications "['']"

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# packages

sudo pacman -Syu
sudo pacman -Sy flatpak nodejs npm steam snapd docker gamemode wireguard-tools gksu go appimagelauncher python-pip make chromium
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo pacman -Sl multilib

# go

go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
go install github.com/swaggo/swag/cmd/swag@latest
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH
echo 'export PATH=$(go env GOPATH)/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# docker setup

systemctl enable --now snapd.socket
systemctl start docker.service
systemctl enable docker.service
pamac install docker-compose
# sudo groupadd docker
sudo usermod -aG docker $USER

# snaps

sudo ln -s /var/lib/snapd/snap /snap
snap install flutter --classic
snap install discord
snap install telegram-desktop
snap install mattermost-desktop


# conda

sudo pacman -Syu
sudo pacman -Sy libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl  alsa-lib libglvnd
cd ~/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
bash Anaconda3-2022.10-Linux-x86_64.sh
rm ~/Downloads/Anaconda3-2022.10-Linux-x86_64.sh

# gpu tensorflow

conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0
echo "alias python='export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/ && python'" >> ~/.zshrc
source ~/.zshrc
python -m pip install tensorflow tensorflow-gpu numpy pillow

# gpu test tensorflow

python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

# VSCode

pacman -Sy code
pamac build code-marketplace
code --install-extension dancheg97.grpc-clicker
code --install-extension dancheg97.flow-case
code --install-extension ms-python.python
code --install-extension esbenp.prettier-vscode
code --install-extension ritwickdey.LiveServer
code --install-extension ms-azuretools.vscode-docker
code --install-extension eamodio.gitlens
code --install-extension dbaeumer.vscode-eslint
code --install-extension ms-vscode-remote.remote-containers
code --install-extension PKief.material-icon-theme
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension redhat.vscode-yaml
code --install-extension golang.Go
code --install-extension Dart-Code.dart-code
code --install-extension mhutchie.git-graph
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension rangav.vscode-thunder-client
code --install-extension zxh404.vscode-proto3
code --install-extension GitLab.gitlab-workflow
code --install-extension 42Crunch.vscode-openapi
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-pg
code --install-extension jock.svg
code --install-extension svelte.svelte-vscode
code --install-extension Orta.vscode-jest

# Shortcuts

gnome-terminal -- sudo bash -c 'wg-quick down /home/dancheg97/Documents/wg.conf;wg-quick up /home/dancheg97/Documents/wg.conf'

# Shortcuts storage

cd ~/.config/'Code - OSS'/User
