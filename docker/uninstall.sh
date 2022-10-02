sudo dpkg --configure -a
sudo systemctl stop docker.socket
sudo apt-get -y purge docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt-get -y remove docker docker-engine docker.io containerd runc docker-compose-plugin docker-scan-plugin