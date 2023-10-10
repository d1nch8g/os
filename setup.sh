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

# Cloning all my repositories working repos.
git clone https://github.com/d1nch8g/

cd ~
git clone https://ion.lc/d1nch8g/os
git clone https://ion.lc/d1nch8g/iso
git clone https://ion.lc/d1nch8g/ainst
git clone https://ion.lc/d1nch8g/pack
git clone https://ion.lc/d1nch8g/pacman
git clone https://ion.lc/d1nch8g/help
git clone https://ion.lc/d1nch8g/articles
git clone https://ion.lc/d1nch8g/grpc-clicker

cd ~
mkdir ion_archive
git clone https://ion.lc/d1nch8g/timemocks
git clone https://ion.lc/d1nch8g/pkg-tests
git clone https://ion.lc/d1nch8g/package
git clone https://ion.lc/d1nch8g/bigflag
git clone https://ion.lc/d1nch8g/repo
git clone https://ion.lc/d1nch8g/registry
git clone https://ion.lc/d1nch8g/go-reflect
git clone https://ion.lc/d1nch8g/testrepo

cd ~
mkdir github_archive
cd github_archive
git clone https://github.com/d1nch8g/flow-case
git clone https://github.com/d1nch8g/learn_typescript
git clone https://github.com/d1nch8g/learn_ts
git clone https://github.com/d1nch8g/grpcclicker_flutter
git clone https://github.com/d1nch8g/grpc_clicker
git clone https://github.com/d1nch8g/learnjs
git clone https://github.com/d1nch8g/gateway
git clone https://github.com/d1nch8g/learn_vsc_extensions
git clone https://github.com/d1nch8g/learn_svelte
git clone https://github.com/d1nch8g/learncss
git clone https://github.com/d1nch8g/vscode-material-icon-theme
git clone https://github.com/d1nch8g/discord_alerts
git clone https://github.com/d1nch8g/goenv
git clone https://github.com/d1nch8g/go_udp_server_example
git clone https://github.com/d1nch8g/assets
git clone https://github.com/d1nch8g/tradebits
git clone https://github.com/d1nch8g/orb_cloud_mobile
git clone https://github.com/d1nch8g/godotenv
git clone https://github.com/d1nch8g/softdigger
git clone https://github.com/d1nch8g/integer_conversion_test
git clone https://github.com/d1nch8g/nw_auc_checker
git clone https://github.com/d1nch8g/sync_tree_mobile
git clone https://github.com/d1nch8g/sync_tree_mobile_logic
git clone https://github.com/d1nch8g/crypto_export
git clone https://github.com/d1nch8g/gitea
git clone https://github.com/d1nch8g/infr
git clone https://github.com/d1nch8g/iso
git clone https://github.com/d1nch8g/ainst
git clone https://github.com/d1nch8g/go-flags
git clone https://github.com/d1nch8g/grpc-clicker
git clone https://github.com/d1nch8g/coin-dom
git clone https://github.com/d1nch8g/package
git clone https://github.com/d1nch8g/pack
git clone https://github.com/d1nch8g/pacser
git clone https://github.com/d1nch8g/pacman
git clone https://github.com/d1nch8g/repo
git clone https://github.com/d1nch8g/ga-hugo-theme
git clone https://github.com/d1nch8g/setup
git clone https://github.com/d1nch8g/go-pacman
git clone https://github.com/d1nch8g/gen-tools
git clone https://github.com/d1nch8g/gitea_setup
git clone https://github.com/d1nch8g/linux_yandex_music
git clone https://github.com/d1nch8g/clean_go_svc
git clone https://github.com/d1nch8g/oapi-codegen
git clone https://github.com/d1nch8g/gRPC_api_example
git clone https://github.com/d1nch8g/test_grpc_call_page
git clone https://github.com/d1nch8g/svelte_new_project_tests
git clone https://github.com/d1nch8g/flow-case
