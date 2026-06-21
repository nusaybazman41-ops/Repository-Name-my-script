#!/bin/bash

apt update -y

apt install -y qemu-kvm \
libvirt-daemon-system \
libvirt-clients \
virtinst \
bridge-utils

systemctl enable libvirtd
systemctl start libvirtd

echo "KVM Installed"
