
sudo kubeadm init --kubernetes-version=1.17.1 --pod-network-cidr=10.244.0.0/16 --image-repository=registry.cn-hangzhou.aliyuncs.com/xf0826


sudo kubeadm init --apiserver-advertise-address=192.168.54.68  --kubernetes-version=1.17.1  --pod-network-cidr=10.244.0.0/16 --image-repository=registry.cn-hangzhou.aliyuncs.com/xf0826

kubeadm join 192.168.54.68:6443 --token p782u0.0rrehwgespvpxlxf  --discovery-token-ca-cert-hash sha256:b57bb6c6fdffa6925a7d206a7f199a97e16ac4219e6b8aefe274af403d977680 


sudo kubectl apply -f kube-flannel.yml