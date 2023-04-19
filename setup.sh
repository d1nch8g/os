git config --global push.followTags true
git config --global credential.helper store

echo 'Enter user name for git:'
read user
git config --global user.name $user

echo 'Enter user email for git:'
read email
git config --global user.email $email

cp ~/fmnxdev/pes.png ~/.face

yay -Sy --needed --noconfirm cmake clang visual-studio-code-bin docker chromium nodejs-nativefier flutter buf-bin golangci-lint-bin protoc-gen-go-grpc meson ninja docker-compose appimagelauncher qemu-desktop edk2-ovmf archiso archinstall

echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.zshrc

git config --global --add safe.directory /opt/flutter
sudo chmod a+rwx -R /opt/flutter

nativefier --name kuma https://up.fmnx.ru
cp ~/fmnxdev/kuma-nativefier-d323dc.desktop ~/.local/share/applications/kuma-nativefier-d323dc.desktop
nativefier --name drone https://ci.fmnx.ru
cp ~/fmnxdev/kuma-nativefier-d323dc.desktop ~/.local/share/applications/kuma-nativefier-d323dc.desktop

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
go install fmnx.ru/dancheg97/gen-tools@latest

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
git clone https://fmnx.ru/dancheg97/fmnxpkg
git clone https://fmnx.ru/dancheg97/fmnx
git clone https://fmnx.ru/dancheg97/fmnx-install
wget https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage

cp ~/fmnxdev/settings.json ~/.config/Code/User/settings.json
cp ~/fmnxdev/keybindings.json ~/.config/Code/User/keybindings.json

sed -i 's|LAMODA|FOZZY|g' ~/.config/chromium/Default/Preferences
sed -i 's|www.lamoda.ru|accounts.fozzy.com/clientarea.php|g' ~/.config/chromium/Default/Preferences

sed -i 's|VK|FLATICON|g' ~/.config/chromium/Default/Preferences
sed -i 's|vk.com|www.flaticon.com/ru|g' ~/.config/chromium/Default/Preferences

sed -i 's|TINKOFF|FMNX|g' ~/.config/chromium/Default/Preferences
sed -i 's|www.tinkoff.ru|fmnx.ru|g' ~/.config/chromium/Default/Preferences

sed -i 's|Y-DISK|SVGREPO|g' ~/.config/chromium/Default/Preferences
sed -i 's|disk.yandex.com|svgrepo.com|g' ~/.config/chromium/Default/Preferences

sed -i 's|Y-TRAVEL|GITHUB|g' ~/.config/chromium/Default/Preferences
sed -i 's|travel.yandex.ru|github.com|g' ~/.config/chromium/Default/Preferences
