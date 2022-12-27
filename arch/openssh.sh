sudo pacman -Sy openssh
sudo systemctl status sshd.service

echo 'Host *
  PasswordAuthentication no
  AuthenticationMethods publickey' | xclip -selection clipboard
sudo nano /etc/ssh/sshd_config

sudo systemctl enable sshd.service
sudo systemctl start sshd.service
