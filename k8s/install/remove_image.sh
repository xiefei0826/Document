docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/kube-apiserver:1.17.1
docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/kube-controller-manager:1.17.1
docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/kube-scheduler:1.17.1
docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/kube-proxy:1.17.1
docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/pause:3.1
docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/etcd:3.4.3-0
docker image rm  registry.cn-hangzhou.aliyuncs.com/xf0826/coredns:1.6.5

docker image rm k8s.gcr.io/kube-proxy:v1.17.1
docker image rm  k8s.gcr.io/kube-scheduler:v1.17.1
docker image rm   k8s.gcr.io/etcd:3.4.3-0 
docker image rm   k8s.gcr.io/pause:3.1
docker image rm   k8s.gcr.io/coredns:1.6.5

docker image rm  k8s.gcr.io/kube-controller-manager:v1.17.1
docker image rm    k8s.gcr.io/kube-apiserver:v1.17.1