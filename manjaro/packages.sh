sudo pacman -Syu
sudo pacman -Sy flatpak drawing nodejs npm steam snapd docker gamemode wireguard-tools gksu go appimagelauncher python-pip make chromium ttf-meslo-nerd-font-powerlevel10k telegram-desktop mattermost-desktop discord godot
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo pacman -Sl multilib

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay