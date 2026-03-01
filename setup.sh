#!/bin/bash
set -e

echo "=========================================="
echo "    Ubuntu Provisioning Bootstrap         "
echo "=========================================="

echo "Updating system..."
sudo apt update

echo "Installing prerequisites (git, curl, software-properties-common)..."
sudo apt install -y software-properties-common git curl

if ! command -v ansible >/dev/null 2>&1; then
  echo "Adding Ansible PPA..."
  sudo apt-add-repository --yes --update ppa:ansible/ansible

  echo "Installing Ansible..."
  sudo apt install -y ansible
else
  echo "Ansible already installed, skipping..."
fi

echo "Running Ansible Playbook..."
ansible-playbook playbook.yml -K

echo "Provisioning completed successfully!"
