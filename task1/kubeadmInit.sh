#!/bin/sh

#kubeadm init
sudo kubeadm init --kubernetes-version=v1.18.0 --pod-network-cidr=10.244.0.0/16 --control-plane-endpoint=192.168.1.103 --ignore-preflight-errors=IsPrivilegedUser,preflight

#create directory
mkdir -p $HOME/.kube

#copy admin.conf file
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

#add to the super user group
sudo chown $(id -u):$(id -g) $HOME/.kube/config


# create pod network
sudo kubectl apply -f https://docs.projectcalico.org/v3.11/manifests/calico.yaml


# make master node as worker node

kubectl taint nodes --all node-role.kubernetes.io/master-
