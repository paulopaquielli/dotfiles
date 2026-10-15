#!/bin/bash
set -e

echo "=========================================="
echo "    Ubuntu Provisioning Bootstrap         "
echo "=========================================="

if [ "$(id -u)" -eq 0 ]; then
  SUDO=""
else
  SUDO="sudo"
fi

echo "Updating system..."
$SUDO apt update

echo "Installing prerequisites (git, curl, software-properties-common)..."
$SUDO apt install -y software-properties-common git curl

if ! command -v ansible >/dev/null 2>&1; then
  echo "Adding Ansible PPA..."
  $SUDO apt-add-repository --yes --update ppa:ansible/ansible

  echo "Installing Ansible..."
  $SUDO apt install -y ansible
else
  echo "Ansible already installed, skipping..."
fi

echo "Running Ansible Playbook..."
ansible-playbook playbook.yml -K

echo "Provisioning completed successfully!"
