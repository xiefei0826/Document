#!/bin/bash
openssl genrsa -out ca.key 4096


openssl req -x509 -new -nodes -sha512 -days 3650 \
 -subj "/C=CN/ST=Beijing/L=Beijing/O=example/OU=Personal/CN=imagewarehouse.com" \
 -key ca.key \
 -out ca.crt

 openssl genrsa -out imagewarehouse.com.key 4096

 openssl req -sha512 -new \
     -subj "/C=CN/ST=Beijing/L=Beijing/O=example/OU=Personal/CN=imagewarehouse.com" \
     -key imagewarehouse.com.key \
     -out imagewarehouse.com.csr


cat > v3.ext <<-EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names

[alt_names]
DNS.1=imagewarehouse.com
DNS.2=imagewarehouse
DNS.3=ld1
EOF


openssl x509 -req -sha512 -days 3650 \
    -extfile v3.ext \
    -CA ca.crt -CAkey ca.key -CAcreateserial \
    -in imagewarehouse.com.csr \
    -out imagewarehouse.com.crt


sudo mkdir -p  /data/cert
sudo chmod 777 -R /data
cp imagewarehouse.com.crt /data/cert/
cp imagewarehouse.com.key /data/cert/


openssl x509 -inform PEM -in imagewarehouse.com.crt -out imagewarehouse.com.cert

sudo mkdir -p /etc/docker/certs.d/imagewarehouse.com/
sudo chmod 777 -R /etc/docker/certs.d/imagewarehouse.com/
cp imagewarehouse.com.cert /etc/docker/certs.d/imagewarehouse.com/
cp imagewarehouse.com.key /etc/docker/certs.d/imagewarehouse.com/
cp ca.crt /etc/docker/certs.d/imagewarehouse.com/