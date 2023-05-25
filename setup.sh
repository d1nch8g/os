pack i meson ninja qemu-desktop edk2-ovmf archiso archinstall
echo 'alias code=vscodium' >> ~/.zshrc
alias code=vscodium
go install github.com/ktr0731/evans@latest
go install mvdan.cc/gofumpt@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest
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
cd ~
sudo rm -rf Pictures
git clone https://fmnx.su/core/iso
git clone https://fmnx.su/core/pack
git clone https://fmnx.su/core/repo
git clone https://fmnx.su/core/infr
git clone https://fmnx.su/core/ainst
git clone https://fmnx.su/dancheg97/grpc-clicker
git clone https://fmnx.su/dancheg97/Pictures
cp ~/os/settings.json ~/.config/VSCodium/User/settings.json
cp ~/os/keybindings.json ~/.config/VSCodium/User/keybindings.json
cp ~/os/ava.jpeg ~/.face
cd ~
code iso
code pack
code repo
code infr
code ainst
code grpc-clicker
code Pictures