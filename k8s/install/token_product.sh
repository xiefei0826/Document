#如果过期可先执行此命令
kubeadm token create    #重新生成token
#列出token
kubeadm token list  | awk -F" " '{print $1}' |tail -n 1


openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed  's/^ .* //'


kubeadm join 192.168.40.8:6443 --token token填这里   --discovery-token-ca-cert-hash sha256:哈希值填这里


# 打印token
kubeadm token create --print-join-command



