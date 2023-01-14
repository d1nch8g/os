sudo pacman -Syu
sudo pacman -S drawing git chromium telegram-desktop
sudo pacman -S flatpak nodejs npm docker gamemode wireguard-tools go python-pip make mattermost-desktop discord godot

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

yay -Sy snapd gksu appimagelauncher
