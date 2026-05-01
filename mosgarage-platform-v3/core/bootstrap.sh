#!/usr/bin/env bash
apt-get update || true
apt-get install -y sudo bash curl git rsync openssh-client ca-certificates build-essential python3 python3-pip cron unzip nano unison inotify-tools || true
if ! id ubuntu >/dev/null 2>&1; then
 useradd -m -s /bin/bash ubuntu
fi
echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
usermod -aG sudo ubuntu
