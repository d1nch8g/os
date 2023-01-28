echo '[url "ssh://git@gitlab.c2g.pw/"]' >> ~/.gitconfig
echo '  email = d.fominykh@ctrl2go.solutions' >> ~/.gitconfig
echo '  insteadOf = https://gitlab.c2g.pw/' >> ~/.gitconfig
echo '  name = Danila Fominykh' >> ~/.gitconfig
echo '  email = dfominykh@c2g.local' >> ~/.gitconfig

go env -w GOPRIVATE="gitlab.c2g.pw"

code --install-extension dancheg97.grpc-clicker &
code --install-extension esbenp.prettier-vscode &
code --install-extension ms-azuretools.vscode-docker &
code --install-extension ms-vscode-remote.remote-containers &
code --install-extension PKief.material-icon-theme &
code --install-extension ms-vscode-remote.remote-ssh &
code --install-extension MS-vsliveshare.vsliveshare &
code --install-extension redhat.vscode-yaml &
code --install-extension golang.Go &
code --install-extension mhutchie.git-graph &
code --install-extension rangav.vscode-thunder-client &
code --install-extension zxh404.vscode-proto3 &
code --install-extension svelte.svelte-vscode

sudo pacman -Sy wireguard-tools resolvconf

echo 'export GOPATH=$HOME/go' >> ~/.bashrc