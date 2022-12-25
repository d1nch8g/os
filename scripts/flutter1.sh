pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

yay -S flutter

sudo pacman -S jre8-openjdk

echo "export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'" >> ~/.zshrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH"  >> ~/.zshrc
source ~/.zshrc

sudo groupadd flutterusers
sudo gpasswd -a $USER flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter/

sudo chown -R $USER /opt/flutter

yay -S android-sdk android-sdk-platform-tools android-sdk-build-tools
yay -S android-platform
yay -S android-sdk-cmdline-tools-latest

sudo groupadd android-sdk
sudo gpasswd -a $USER android-sdk
sudo setfacl -R -m g:android-sdk:rwx /opt/android-sdk
sudo setfacl -d -m g:android-sdk:rwX /opt/android-sdk

/home/dancheg97/AirSimNH/LinuxNoEditor/AirSimNH.sh

exit