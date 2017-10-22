#!/bin/bash

# Cloning the LinuxKit Repository


git clone https://github.com/ajeetraina/linuxkit
cd linuxkit/

# Building Moby & LinuxKit Tool

make

# Copying the tools into the right PATH 

cp -rf bin/moby /usr/local/bin/
cp -rf bin/linuxkit /usr/local/bin

# Peeping into Kubernetes Project

cd projects/kubernetes/

# Build minimal and immutable Kubernetes OS images

make build-vm-images

# Boot Kubernetes master OS image using hyperkit

./boot.sh
