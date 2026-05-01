#!/usr/bin/env bash
mkdir -p ~/.ssh
cat > ~/.ssh/config <<EOL
Host github-mofabs
 HostName github.com
 User git
 IdentityFile ~/.ssh/id_officialmofabs
EOL
