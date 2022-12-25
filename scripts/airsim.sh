sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

yay -Sy unreal-engine

conda install -c conda-forge boost clang=8.0.1 libcxx=8.0.1
git clone https://github.com/Microsoft/AirSim.git
cd AirSim
sed -i '46,53 s/^/#/' setup.sh
sed -i '63 s/^/#/' setup.sh
sed -i '97 s/^/#/' setup.sh
./setup.sh
./build.sh

