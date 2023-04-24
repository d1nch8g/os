cp ~/fmnx-dev/pes.png ~/.face
yay -Sy --needed --noconfirm buf-bin golangci-lint-bin protoc-gen-go-grpc meson ninja appimagelauncher qemu-desktop edk2-ovmf archiso archinstall

sudo chmod a+rwx -R /opt/flutter
dart pub global activate protoc_plugin

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

systemctl start docker.service
systemctl enable docker.service
sudo groupadd docker
sudo usermod -aG docker $USER

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
git clone https://fmnx.ru/dancheg97/grpclicker_vscode
git clone https://fmnx.ru/dancheg97/fmnx
git clone https://fmnx.ru/dancheg97/fmnx-dev
git clone https://fmnx.ru/dancheg97/fmnx-pkg
git clone https://fmnx.ru/dancheg97/fmnx-install
git clone https://fmnx.ru/dancheg97/fmnx-server
git clone https://fmnx.ru/dancheg97/fmnx-gen
wget https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage
