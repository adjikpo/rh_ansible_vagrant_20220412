#!/bin/sh

set -e
set -u


file='/etc/os-release'
id=$(grep '^ID=' $file | cut -f2 -d'=')

if [ $id = 'rhel' ] ; then
    echo 'INSTALLING ON RED HAT'
    sudo yum update -y
    sudo yum install -y vim dnf-plugins-core
    sudo yum config-manager --disable epel epel-modular
    sudo yum install -y ansible
fi

if [ $id = 'ubuntu' ] ; then
    echo 'INSTALLING ON UBUNTU'
    sudo apt-get update -y
    sudo apt-get install -y vim
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt install -y ansible
fi
if [ $id = 'centos' ] ; then
    echo 'INSTALLING ON CENTOS'
    sudp ym update -y
    sudo yum install -y vim epel-release 
    sudo yum install -y ansible
fi