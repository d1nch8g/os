# git

git config --global user.email "email"
git config --global user.name "name"
git config credential.helper store
git config --global http.sslVerify false

# shortcuts

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['']"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Shift><Control>Insert"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "gnome-terminal -- sudo bash -c 'wg-quick down /home/dancheg/Documents/wg.conf;wg-quick up'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "vpn"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Shift><Control>F8"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "gnome-terminal"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "terminal"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Shift><Control>F7"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "code"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "vscode"

# packages

sudo pacman -Syu
sudo pacman -Sy flatpak nodejs npm steam snapd docker gamemode wireguard-tools gksu go appimagelauncher
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo pacman -Sl multilib

# vscode

sudo pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si
cd ..

# yay

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome
cd ..

# go

go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
go install github.com/swaggo/swag/cmd/swag@latest
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH
echo 'export PATH=$(go env GOPATH)/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# python

sudo pacman -Syu
sudo pacman -Sy libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl alsa-lib libglvnd
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash Anaconda3-2020.11-Linux-x86_64.sh
conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/" >> ~/.zshrc
source ~/.zshrc
python -m pip install tensorflow
python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

# docker setup

systemctl enable --now snapd.socket
systemctl start docker.service
systemctl enable docker.service
pamac install docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER

# snaps

ln -s /var/lib/snapd/snap /snap
snap install flutter --classic
snap install discord
snap install telegram-desktop
snap install mattermost-desktop
