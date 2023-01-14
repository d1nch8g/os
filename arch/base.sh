sudo pacman -Syu
sudo pacman -S drawing git chromium telegram-desktop
sudo pacman -S flatpak nodejs npm docker gamemode wireguard-tools go python-pip make mattermost-desktop discord godot

git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg97"
git config --global credential.helper store
git config --global http.sslVerify false
git config --global url."ssh://git@gitlab.c2g.pw/".insteadOf "https://gitlab.c2g.pw/"
git config --global url."ssh://git@gitlab.c2g.pw/".name "Danila Fominykh"
git config --global url."ssh://git@gitlab.c2g.pw/".email "dfominykh@c2g.local"

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

yay -Sy snapd gksu appimagelauncher gnome-shell-extension-gtile-git visual-studio-code-bin

