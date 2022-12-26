cd ~
wget https://github.com/microsoft/AirSim/releases/download/v1.8.1/AirSimNH.zip
unzip AirSimNH.zip
rm AirSimNH.zip
echo "alias airsim='sh ~/AirSimNH/LinuxNoEditor/AirSimNH.sh'" >> ~/.zshrc
source ~/.zshrc

