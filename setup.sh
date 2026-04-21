#!/bin/bash

# File setup
cp ~/os/ava.jpeg ~/.face

# === VS Code configs ===
cp ~/os/settings.json ~/.config/'Code - OSS'/User/settings.json
cp ~/os/keybindings.json ~/.config/'Code - OSS'/User/keybindings.json

# === GNOME keyboard shortcuts ===
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"

gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"

# === Wallpaper ===
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/os/wallpaper.jpg"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$HOME/os/wallpaper.jpg"
gsettings set org.gnome.shell favorite-apps "['org.gnome.Settings.desktop', 'code-oss.desktop', 'chromium.desktop', 'org.telegram.desktop.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Console.desktop']"

# === Gnome folders flattening ===
gsettings set org.gnome.desktop.app-folders folder-children "[]"
gsettings set org.gnome.desktop.app-folders folder-children "['']" 2>/dev/null || true
echo "✅ App grid flattened! All apps will appear in a single alphabetical list."

# === Git config (no shell issues) ===
git config --global user.name "d1nch8g"
git config --global user.email "d1nch8g@gmail.com"
git config --global credential.helper store

# === Cleanup (no shell issues) ===
for pkg in gnome-layout-switcher gnome-user-docs manjaro-application-utility libpamac-flatpak-plugin pamac-gnome-integration gnome-contacts gnome-tour gnome-text-editor gnome-calendar gnome-characters gnome-chess gnome-music gnome-system-monitor gnome-maps gnome-boxes gnome-calculator gnome-weather gnome-font-viewer gnome-mines gnome-logs gnome-clocks gnome-tweaks gnome-connections baobab quadrapassel iagno simple-scan snapshot loupe papers decibels gnome-firmware gnome-disk-utility pamac-gtk pamac-cli libpamac ex-vi-compat vim timeshift-autosnap-manjaro collision endeavour file-roller fragments kvantum-manjaro manjaro-hello micro timeshift gufw malcontent thunderbird firefox gnome-shell-extension-gtk4-desktop-icons-ng webapp-manager showtime; do
    pacman -Q "$pkg" &>/dev/null && sudo pacman -Rns --noconfirm "$pkg"
done

# === System Updates (safe) ===
sudo pacman -Syu
sudo pacman -S --needed --noconfirm git go docker docker-compose telegram-desktop chromium code base-devel

# === Environment Setup - SOLUTION 1 ===
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

# === Go tools (now works because PATH is set) ===
go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@v2.11.4

# === VS Code extensions ===
code --install-extension PKief.material-icon-theme
code --install-extension ms-azuretools.vscode-docker
code --install-extension mhutchie.git-graph
code --install-extension jeff-hykin.mario
code --install-extension golang.Go
code --install-extension mtxr.sqltools
code --install-extension mtxr.sqltools-driver-pg
code --install-extension mtxr.sqltools-driver-sqlite

# === Docker setup ===
sudo groupadd docker 2>/dev/null  # 2>/dev/null hides "group already exists" error
sudo usermod -aG docker $USER

sudo systemctl enable docker
sudo systemctl start docker

# === Hide chromium bookmarks ===

[ -f ~/.config/chromium/Default/Preferences ] && sed -i 's/"show_on_all_tabs":true/"show_on_all_tabs":false/' ~/.config/chromium/Default/Preferences || echo "Chromium preferences not found - run Chromium at least once first"

# === Final message ===
echo ""
echo "✅ Script completed!"
echo "⚠️  IMPORTANT: Log out and log back in (or reboot) for:"
echo "   - Docker group permissions to take effect"
echo "   - New shell environment variables"
echo "   - Full GNOME session reload"
