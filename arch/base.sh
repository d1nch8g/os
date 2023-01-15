sudo pacman -Syu
sudo pacman -S drawing git chromium telegram-desktop
sudo pacman -S gnome-calculator gnome-calendar gnome-control-center gnome-disk-utility gnome-keyring gnome-logs gnome-system-monitor gnome-shell-extensions xdg-user-dirs-gtk gedit gnome-terminal gnome-tweaks
sudo pacman -S flatpak nodejs npm docker gamemode wireguard-tools go python-pip make mattermost-desktop discord godot

dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Super>Tab', '<Alt>Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-applications "['']"
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg97"
git config --global credential.helper store

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

yay -Sy ttf-droid snapd gksu appimagelauncher gnome-browser-connector visual-studio-code-bin

code --install-extension dancheg97.grpc-clicker
code --install-extension dancheg97.flow-case
code --install-extension ms-python.python
code --install-extension esbenp.prettier-vscode
code --install-extension ritwickdey.LiveServer
code --install-extension ms-azuretools.vscode-docker
code --install-extension dbaeumer.vscode-eslint
code --install-extension ms-vscode-remote.remote-containers
code --install-extension PKief.material-icon-theme
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension redhat.vscode-yaml
code --install-extension golang.Go
code --install-extension mhutchie.git-graph
code --install-extension rangav.vscode-thunder-client
code --install-extension zxh404.vscode-proto3
code --install-extension GitLab.gitlab-workflow
code --install-extension 42Crunch.vscode-openapi
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-pg
code --install-extension jock.svg
code --install-extension svelte.svelte-vscode
code --install-extension Orta.vscode-jest
code --install-extension raynigon.nginx-formatter

ln -s ~/os/.vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/os/.vscode/settings.json ~/.config/Code/User/settings.json

systemctl enable --now snapd.socket
systemctl start docker.service
systemctl enable docker.service
pamac install docker-compose
sudo usermod -aG docker $USER

go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH
