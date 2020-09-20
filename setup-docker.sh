sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install  -y\
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# adding current user to docker group, 
# this is necessary to run docker without 
# root previleges,.
# The docker group grants privileges equivalent to the root user. 
# For details on how this impacts security in your system, see Docker Daemon Attack Surface.
sudo groupadd docker
sudo usermod -aG docker $USER

newgrp docker
