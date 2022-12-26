conda install -c conda-forge boost clang=8.0.1 libcxx=8.0.1

cd ~
git clone https://github.com/Microsoft/AirSim.git
cd AirSim

sed -i '46,53 s/^/#/' setup.sh
sed -i '63 s/^/#/' setup.sh
sed -i '97 s/^/#/' setup.sh
./setup.sh

sed -i '70,71 s/^/#/' build.sh
export CC="~/anaconda3/bin/clang-8"
export CXX="~/anaconda3/bin/clang-8"
./build.sh
