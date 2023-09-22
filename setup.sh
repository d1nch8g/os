# Avatarka :D
cp ~/os/ava.jpeg ~/.face

# Installing my sutff...
pack -Syuq archiso archinstall meson ninja go flutter rustup gnome-boxes etcher-bin

# Setting up flutter.
cd ~
git clone https://github.com/flutter/flutter
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
code --install-extension wdhongtw.gpg-indicator
code --install-extension bungcip.better-toml
code --install-extension rust-lang.rust
code --install-extension rust-lang.rust-analyzer

cp ~/os/settings.json ~/.config/VSCodium/User/settings.json
cp ~/os/keybindings.json ~/.config/VSCodium/User/keybindings.json

# Set up vmware
sudo modprobe -a vmw_vmci vmmon
sudo systemctl start vmware-networks.service

# Cloning main working repos.
cd ~
git clone https://fmnx.su/core/iso
git clone https://fmnx.su/core/pack
git clone https://fmnx.su/core/infr
git clone https://fmnx.su/core/ainst
git clone https://fmnx.su/dancheg97/notes
cd ~
