#!/bin/bash

# Update system
yum update -y

# Install epel-release repository
yum install epel-release -y

# Install required packages
yum install net-tools wget vim -y

# Stop and disable firewalld
systemctl stop firewalld
systemctl disable firewalld

# Disable SELinux
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/sysconfig/selinux

# Create an alias for vi to vim
echo "alias vi=vim" >> ~/.bashrc

echo "Setup completed."
