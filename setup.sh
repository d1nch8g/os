# Avatarka :D
cp ~/os/ava.jpeg ~/.face

sudo pacman -Syu --needed go docker zsh git nodejs npm gnome-keyring papirus-icon-theme openvpn geary zsh-autosuggestions p7zip telegram-desktop

git config --global user.name "d1nch8g"
git config --global user.email "d1nch8g@gmail.com"

pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Sy vscodium brave-bin

# Setting up go.
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/go/bin"' >> ~/.zshrc

# Setting up VSCodium.
# (alias will be set via preconfigured .zshrc)

go install github.com/ktr0731/evans@latest
go install mvdan.cc/gofumpt@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest

vscodium --install-extension PKief.material-icon-theme
vscodium --install-extension esbenp.prettier-vscode
vscodium --install-extension ms-azuretools.vscode-docker
vscodium --install-extension redhat.vscode-yaml
vscodium --install-extension mhutchie.git-graph
vscodium --install-extension jeff-hykin.mario
vscodium --install-extension IronGeek.vscode-env
vscodium --install-extension golang.Go
vscodium --install-extension bungcip.better-toml

cp ~/os/settings.json ~/.config/VSCodium/User/settings.json
cp ~/os/keybindings.json ~/.config/VSCodium/User/keybindings.json

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"

gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['']"
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false

gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'

# Set wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/os/wallpaper.jpg"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$HOME/os/wallpaper.jpg"

cd ~
# Install Oh My Zsh non-interactively
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install preconfigured zsh files
cp ~/os/.zshrc ~/
cp ~/os/.p10k.zsh ~/

# Change default shell to zsh
chsh -s $(which zsh)

# OpenVPN setup
echo "Enter archive password for VPN configs:"
read -s vpn_password
cd /etc/openvpn
sudo 7z x ~/os/ovpn.zip -p"$vpn_password"

# VPN alias for Belgium
echo 'alias vpn="cd /etc/openvpn && sudo openvpn --config \"Belgium, Brussels S1.ovpn\""' >> ~/.zshrc

sudo groupadd docker
sudo usermod -aG docker $USER

yay -S mcpelauncher-ui
