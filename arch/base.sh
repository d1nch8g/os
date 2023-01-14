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

yay -Sy snapd gksu appimagelauncher gnome-shell-extension-gtile-git visual-studio-code-bin gnome-shell-extensions gnome-browser-connector

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

systemctl enable --now snapd.socket
systemctl start docker.service
systemctl enable docker.service
pamac install docker-compose
sudo usermod -aG docker $USER

go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1
go install github.com/swaggo/swag/cmd/swag@latest
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
go env -w GOPRIVATE="gitlab.c2g.pw"
source /etc/environment && export PATH=$(go env GOPATH)/bin:$PATH
echo 'export PATH=$(go env GOPATH)/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
