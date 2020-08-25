# 安装docker 
sudo apt-get update
sudo apt-get install     apt-transport-https     ca-certificates     curl    gnupg-agent   software-properties-common -y
sudo curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu    $(lsb_release -cs)    stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

#  增加用户组
sudo groupadd docker 
sudo gpasswd -a $USER docker 
newgrp docker 
docker ps

# 增加阿里云
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://1xnkwdzu.mirror.aliyuncs.com"],
  "exec-opts": ["native.cgroupdriver=systemd"]
}

EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
