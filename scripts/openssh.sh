sudo pacman -Sy openssh
sudo systemctl status sshd.service

echo 'Host *
  PasswordAuthentication no' | xclip -selection clipboard

sudo systemctl enable sshd.service
sudo systemctl start sshd.service
