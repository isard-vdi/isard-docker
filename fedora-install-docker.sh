sudo dnf -y install virt-viewer
sudo dnf -y remove docker \
                  docker-common \
                  container-selinux \
                  docker-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf -y config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y makecache 
#sudo dnf config-manager --set-enabled docker-ce-test
sudo dnf -y install docker-ce docker-compose -y
sudo systemctl enable docker
sudo systemctl start docker


sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo setenforce 0
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config && cat /etc/selinux/config
sudo systemctl start docker
