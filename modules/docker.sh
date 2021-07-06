#!/usr/bin/env bash
# docker.sh
# install docker and docker-compose

# docker
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
# remove the need for sudo...
sudo usermod -aG docker $USER

# docker-compose
# We install the v1.x branch here, V2 is in BETA and quite stable it seems, so
# will probably move over to that in the future
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
