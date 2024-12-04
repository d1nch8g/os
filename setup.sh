# Avatarka :D
cp ~/os/ava.jpeg ~/.face

sudo pacman -Syu go docker zsh git nodejs npm 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's|robbyrussell|powerlevel10k/powerlevel10k|g' ~/.zshrc

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Sy vscodium brave-bin

# Setting up flutter.
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.zshrc

# Setting up go.
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/go/bin"' >> ~/.zshrc

# Setting up VSCodium.
echo 'alias code=vscodium' >> ~/.zshrc

go install github.com/ktr0731/evans@latest
go install mvdan.cc/gofumpt@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest

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

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"

p10k configure
