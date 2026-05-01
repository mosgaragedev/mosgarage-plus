#!/usr/bin/env bash
set -e
STEPS=(
  "core/bootstrap.sh"
  "core/userspace.sh"
  "services/sync.sh"
  "services/backup.sh"
  "services/git.sh"
  "services/containers.sh"
  "services/cleanup.sh"
  "services/tailscale.sh"
  "services/health.sh"
)
for step in "${STEPS[@]}"; do
  echo "Running $step"
  bash "$step"
done
