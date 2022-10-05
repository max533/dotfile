#!/usr/bin/env bash

### Repair Automatcally package manager
sudo dpkg --configure -a

### Detect Systemd on system or not
program_exists() {
    local return_value='0'
    command -v $1 >/dev/null 2>&1 || { local return_value='1'; }
    if [ "$return_value" -ne 0 ]; then
        return 1
    fi
    return 0
}

program_exists systemctl

### Stop Docker Daemon 
if [ "$?" == '1' ]; then 
    kill -9 $(ps aux| grep 'sudo dockerd' | grep -v "$USER" | awk '{printf $2}')
    kill -9 $(ps aux| grep 'containerd' | grep -v "$USER" | awk '{printf $2}')
else 
    sudo systemctl stop docker docker.socket containerd
    sudo systemctl disable docker docker.socket containerd
fi


### Remove Docker 
sudo apt-get -y purge docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt-get -y remove docker docker-engine docker.io containerd runc docker-compose-plugin docker-scan-plugin
