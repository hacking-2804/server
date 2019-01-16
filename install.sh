sudo -i

sudo apt-get update
sudo apt-get install tmux git -y

# install docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce -y
sudo groupadd docker
sudo usermod -aG docker $usermod
sudo service docker start

git clone https://github.com/hacking-2804/accessible-course-material.git
git clone https://github.com/hacking-2804/course-exercises.git
git clone https://github.com/hacking-2804/visualizing-concepts.git
git clone https://github.com/hacking-2804/server.git

# docker-compose up