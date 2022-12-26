

cd ~
git clone https://github.com/Microsoft/AirSim.git
cd AirSim

conda create --name airsim
conda activate airsim
conda install -c conda-forge boost clang=8.0.1 libcxx=8.0.1

sed -i '46,53 s/^/#/' setup.sh
sed -i '63 s/^/#/' setup.sh
sed -i '97 s/^/#/' setup.sh
./setup.sh


export CC="gcc"
export CXX="g++"
./build.sh --gcc
