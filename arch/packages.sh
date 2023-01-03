sudo pacman -Syu
sudo pacman -Sy flatpak drawing nodejs npm steam snapd docker gamemode wireguard-tools gksu go appimagelauncher python-pip make chromium ttf-meslo-nerd-font-powerlevel10k telegram-desktop mattermost-desktop discord godot
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo pacman -Sl multilib

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Sy gnome-shell-extension-gtile-git visual-studio-code-bin

code --install-extension dancheg97.grpc-clicker
code --install-extension dancheg97.flow-case
code --install-extension ms-python.python
code --install-extension esbenp.prettier-vscode
code --install-extension ritwickdey.LiveServer
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.cpptools-extension-pack
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
code --install-extension raynigon.nginx-formatter

ln -s ~/os/.vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/os/.vscode/settings.json ~/.config/Code/User/settings.json
