### Code Repo (https://github.com/docker/docker-install)
### Install Docker - Convenience Script (https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script)
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh


### Setup Docker Daemon if it didn't exist (Only execute when there isn't systemd on system)
program_exists() {
    local return_value='0'
    command -v $1 >/dev/null 2>&1 || { local return_value='1'; }
    if [ "$return_value" -ne 0 ]; then
        return 1
    fi
    return 0
}

program_exists systemctl

if [ "$?" == '0' ]; then
    # Install
    echo 'Setup Docker Daemon on WSL'
    sudo echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/dockerd" >> /etc/sudoers

    echo '# Start Docker daemon automatically when logging in if not running.' >> ~/.bashrc
    echo 'RUNNING=`ps aux | grep dockerd | grep -v grep`' >> ~/.bashrc
    echo 'if [ -z "$RUNNING" ]; then' >> ~/.bashrc
    echo '    sudo dockerd > /dev/null 2>&1 &' >> ~/.bashrc
    echo '    disown' >> ~/.bashrc
    echo 'fi' >> ~/.bashrc

fi

source ~/.bashrc


### Add $USER to docker gorup to aviod type prefix sudo
sudo groupadd docker
sudo usermod -aG docker $USER


### Activate new change to groups
newgrp docker


### Verify that install docker successfully
docker --rm run hello-world

if [ "$?" == '1' ]; then
    echo 'Install Docker Successfully'
else
    echo 'Install Docker Failed'
fi
