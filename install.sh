# Install Docker
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get install docker-ce -y
sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker start

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Install other software
sudo apt-get install tmux git -y

# Clone the repos
git clone https://github.com/hacking-2804/accessible-course-material.git
git clone https://github.com/hacking-2804/course-exercises.git
git clone https://github.com/hacking-2804/visualizing-concepts.git
git clone https://github.com/hacking-2804/server.git

cd server/

docker-compose up -d