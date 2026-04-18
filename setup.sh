#!/bin/bash

# === SECTION 1: Files & Cleanup (no shell issues) ===
cp ~/os/ava.jpeg ~/.face

sudo pacman -Rns gnome-layout-switcher gnome-user-docs manjaro-application-utility libpamac-flatpak-plugin pamac-gnome-integration
sudo pacman -Rns gnome-contacts gnome-tour gnome-text-editor gnome-calendar gnome-characters gnome-chess gnome-music gnome-system-monitor gnome-maps gnome-boxes gnome-calculator gnome-weather gnome-console gnome-font-viewer gnome-mines gnome-logs gnome-clocks gnome-tweaks gnome-connections baobab quadrapassel iagno simple-scan snapshot loupe papers decibels gnome-firmware gnome-disk-utility pamac-gtk pamac-cli libpamac

# === SECTION 2: System Updates (safe) ===
sudo pacman -Syu --needed git gnome-console go docker telegram-desktop chromium code

# === SECTION 3: Git config (no shell issues) ===
git config --global user.name "d1nch8g"
git config --global user.email "d1nch8g@gmail.com"
git config --global credential.helper store

# === SECTION 4: Environment Setup - SOLUTION 1 ===
# Write env vars to file (will apply on next shell)
echo 'export GOROOT=/usr/lib/go' >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:/usr/lib/go/bin' >> ~/.zshrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/go/bin"' >> ~/.zshrc

# **CRITICAL: Export them NOW for this script**
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/lib/go/bin
export PATH=$PATH:$GOPATH/bin

# === SECTION 5: Go tools (now works because PATH is set) ===
go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@v2.11.4

# === SECTION 6: VS Code extensions ===
code --install-extension PKief.material-icon-theme
code --install-extension ms-azuretools.vscode-docker
code --install-extension mhutchie.git-graph
code --install-extension jeff-hykin.mario
code --install-extension golang.Go
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-pg
code --install-extension mtxr.sqltools-driver-sqlite
code --install-extension saoudrizwan.claude-dev

# === SECTION 7: VS Code configs ===
cp ~/os/settings.json ~/.config/'Code - OSS'/User/settings.json
cp ~/os/keybindings.json ~/.config/'Code - OSS'/User/keybindings.json

# === SECTION 8: GNOME keyboard shortcuts ===
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"

gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['']"

# === SECTION 9: Wallpaper ===
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/os/wallpaper.jpg"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$HOME/os/wallpaper.jpg"
gsettings set org.gnome.shell favorite-apps "['code-oss.desktop', 'chromium.desktop', 'org.telegram.desktop.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Console.desktop']"

# === SECTION 10: Docker setup ===
sudo groupadd docker 2>/dev/null  # 2>/dev/null hides "group already exists" error
sudo usermod -aG docker $USER

sudo systemctl enable docker
sudo systemctl start docker

# === SECTION 11: Final message ===
echo ""
echo "✅ Script completed!"
echo "⚠️  IMPORTANT: Log out and log back in (or reboot) for:"
echo "   - Docker group permissions to take effect"
echo "   - New shell environment variables"
echo "   - Full GNOME session reload"