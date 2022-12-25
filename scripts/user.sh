git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg97"
git config --global credential.helper store
git config --global http.sslVerify false
git config --global url."ssh://git@gitlab.c2g.pw/".insteadOf "https://gitlab.c2g.pw/"
git config --global url."ssh://git@gitlab.c2g.pw/".name "Danila Fominykh"
git config --global url."ssh://git@gitlab.c2g.pw/".email "dfominykh@c2g.local"

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['']"
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Super>Tab', '<Alt>Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-applications "['']"

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

echo 'alias vsync="cd ~/os;git pull;git commit -a -m .;git push"' >> ~/.zshrc
echo 'alias vpn="wg-quick down ~/os/tmp/wg.conf;wg-quick up ~/os/tmp/wg.conf"' >> ~/.zshrc
echo 'alias vpn2="wg-quick down ~/os/tmp/wg2.conf;wg-quick up ~/os/tmp/wg2.conf"' >> ~/.zshrc
source ~/.zshrc