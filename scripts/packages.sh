sudo pacman -Syu
sudo pacman -Sy flatpak nodejs npm steam snapd docker gamemode wireguard-tools gksu go appimagelauncher python-pip make chromium ttf-meslo-nerd-font-powerlevel10k telegram-desktop mattermost-desktop discord
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo pacman -Sl multilib
