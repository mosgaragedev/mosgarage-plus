#!/usr/bin/env bash
docker system prune -a -f || true
apt autoremove -y
