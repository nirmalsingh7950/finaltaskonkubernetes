#!/bin/sh

sudo kubeadm reset --ignore-preflight-errors=IsPrivilegedUser,preflight -f

sudo iptables -F

sudo rm /etc/cni/net.d/*

sudo ipvsadm --clear


rm /home/nirmalsingh/.kube/config
