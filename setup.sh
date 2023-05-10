pack g meson ninja qemu-desktop edk2-ovmf archiso archinstall
go install github.com/ktr0731/evans@latest
go install mvdan.cc/gofumpt@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest
go install fmnx.ru/dancheg97/fmnx-gen@latest
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
code --install-extension Dart-Code.flutter &
code --install-extension IronGeek.vscode-env &
code --install-extension svelte.svelte-vscode
cd ~
sudo rm -rf Pictures
git clone https://fmnx.io/core/iso
git clone https://fmnx.io/core/pack
git clone https://fmnx.io/core/repo
git clone https://fmnx.io/core/infr
git clone https://fmnx.io/core/ainst
git clone https://fmnx.io/dancheg97/grpcclicker
git clone https://fmnx.io/dancheg97/Pictures
cp ~/os/settings.json ~/.config/Code/User/settings.json
cp ~/os/keybindings.json ~/.config/Code/User/keybindings.json
cd ~
cp ~/Pictures/ava.png ~/.face
code iso
code pack
code repo
code infr
code ainst
code grpcclicker
code Pictures