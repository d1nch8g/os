sudo pacman -Sy build-essential
sudo pacman -Sy bc
sudo pacman -Sy linux-headers

git clone https://github.com/Hrex39/rtl8852be
cd rtl8852be
make -j8
sudo make install
sudo modprobe 8852be
cd ..
sudo rm -r rtl8852be
