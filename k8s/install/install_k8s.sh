sudo apt-get update && sudo apt-get install -y apt-transport-https curl
sudo curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg |sudo  apt-key add -
sudo tee /etc/apt/sources.list.d/kubernetes.list <<-'EOF'
deb https://mirrors.aliyun.com/kubernetes/apt kubernetes-xenial main
EOF
# 安装k8s
sudo apt-get update && sudo apt-get install -y  kubeadm 
#sudo kubeadm init --apiserver-advertise-address=192.168.1.131 --pod-network-cidr=10.244.0.0/16 --image-repository=registry.cn-hangzhou.aliyuncs.com/officialproject
#sudo kubectl apply -f kube-flannel.yml
#启用主控机同时作为工作节点
#sudo kubectl taint nodes --all node-role.kubernetes.io/master-
