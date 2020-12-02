# 安装k8s
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
sudo curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add -
sudo tee /etc/apt/sources.list.d/kubernetes.list <<-'EOF'
deb https://mirrors.aliyun.com/kubernetes/apt kubernetes-xenial main
EOF

sudo apt-get update && sudo apt-get install -y  kubeadm

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

#sudo kubeadm init --apiserver-advertise-address=192.168.1.131 --pod-network-cidr=10.244.0.0/16 --image-repository=registry.cn-hangzhou.aliyuncs.com/officialproject
#registry.cn-hangzhou.aliyuncs.com/google_containers
#mkdir -p $HOME/.kube
#sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#sudo chown $(id -u):$(id -g) $HOME/.kube/config
#
#sudo kubectl apply -f kube-flannel.yml

#启用主控机同时作为工作节点
# kubectl taint nodes --all node-role.kubernetes.io/master-
