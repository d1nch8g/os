cd ~
git clone https://github.com/Microsoft/AirSim.git
cd AirSim
sed -i '46,53 s/^/#/' setup.sh
sed -i '63 s/^/#/' setup.sh
sed -i '97 s/^/#/' setup.sh
./setup.sh
# export CC="gcc"
# export CXX="g++"
# ./build.sh --gcc