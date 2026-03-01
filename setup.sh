#!/bin/bash
set -e

echo "=========================================="
echo "    Ubuntu Provisioning Bootstrap         "
echo "=========================================="

echo "Updating system..."
sudo apt update

echo "Installing prerequisites (git, curl, software-properties-common)..."
sudo apt install -y software-properties-common git curl

echo "Adding Ansible PPA..."
sudo apt-add-repository --yes --update ppa:ansible/ansible

echo "Installing Ansible..."
sudo apt install -y ansible

echo "Running Ansible Playbook..."
ansible-playbook playbook.yml -K

echo "Provisioning completed successfully!"
