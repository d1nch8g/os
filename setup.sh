# Avatarka :D
cp ~/os/ava.jpeg ~/.face

# Installing my sutff...
pack -Syuq qemu-desktop edk2-ovmf archiso archinstall balena-etcher meson ninja qemu-desktop edk2-ovmf flutter go

# Setting up flutter.
cd /opt/flutter
git init
sudo chmod a+rwx -R /opt/flutter
git config --global --add safe.directory /opt/flutter
echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.zshrc

# Setting up go.
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc

go install github.com/ktr0731/evans@latest
go install mvdan.cc/gofumpt@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest

# Setting up VSCodium.
alias code=vscodium
code --install-extension esbenp.prettier-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension PKief.material-icon-theme
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension redhat.vscode-yaml
code --install-extension golang.Go
code --install-extension mhutchie.git-graph
code --install-extension rangav.vscode-thunder-client
code --install-extension zxh404.vscode-proto3
code --install-extension Dart-Code.flutter
code --install-extension IronGeek.vscode-env
code --install-extension jeanp413/open-remote-ssh
code --install-extension Dancheg97/grpc-clicker
code --install-extension jeff-hykin/mario
cp ~/os/settings.json ~/.config/VSCodium/User/settings.json
cp ~/os/keybindings.json ~/.config/VSCodium/User/keybindings.json

# Cloning main working repos.
cd ~
sudo rm -rf Pictures
git clone https://fmnx.su/core/iso
git clone https://fmnx.su/core/pack
git clone https://fmnx.su/core/repo
git clone https://fmnx.su/core/infr
git clone https://fmnx.su/core/ainst
git clone https://fmnx.su/dancheg97/grpc-clicker
cd ~

# Opening repos for VSCodium to memorize them for quick navigation.
code iso
code pack
code repo
code infr
code ainst
code grpc-clicker