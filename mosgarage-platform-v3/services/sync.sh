#!/usr/bin/env bash
mkdir -p ~/.unison
cat > ~/.unison/devsync.prf <<EOL
root = /home/ubuntu/localhost
root = /mnt/d/dev/localhost
auto = true
batch = true
repeat = watch
prefer = /home/ubuntu/localhost
EOL
