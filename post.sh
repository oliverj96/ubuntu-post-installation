sudo apt-get update

# Install Developer Tools
sudo apt-get install vim \
	tmux \
	npm \
	tig \
	htop \
	taskwarrior \
	apt-transport-https \
	ca-certifacates \
	curl \
	gnupg-agent \
	software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo snap install code discord bitwarden chromium
npm i -g mdlt

# Install Media tools
sudo apt-get vlc ffmpeg mcomix pinta darktable youtube-dl

# Install Learning tools
sudo apt-get gjiten kanjipad

# Docker Post Installation
sudo groupadd docker
sudo usermod -aG docker $USER

echo "To finish Docker setup, log out and log back in and run the following: \
	\nnewgrp docker \
	\nThen verify with docker run hello-world"

