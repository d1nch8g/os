# Avatarka :D
cp ~/os/ava.jpeg ~/.face

tab -Bqs aur.archlinux.org/adw-gtk3
tab -Bqs aur.archlinux.org/gnome-shell-extension-dash-to-dock

# Installing my sutff...
tab -Syu archiso meson ninja go gnome-boxes
tab -Syu flutter rust

# Setting up flutter.
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.zshrc

# Setting up go.
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/go/bin"' >> ~/.zshrc

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
code --install-extension PKief.material-icon-theme
code --install-extension esbenp.prettier-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension redhat.vscode-yaml
code --install-extension mhutchie.git-graph
code --install-extension jeff-hykin.mario
code --install-extension IronGeek.vscode-env
code --install-extension golang.Go
code --install-extension Dart-Code.flutter
code --install-extension bungcip.better-toml

cp ~/os/settings.json ~/.config/VSCodium/User/settings.json
cp ~/os/keybindings.json ~/.config/VSCodium/User/keybindings.json
