#!/bin/bash

set -e

SSH_DIR="$HOME/.ssh"
SSH_CONFIG="$SSH_DIR/config"
CLOUDFLARED_BIN="$(command -v cloudflared)"

if [ -z "$CLOUDFLARED_BIN" ]; then
  echo "❌ cloudflared not found in PATH"
  echo "Install cloudflared first, then re-run this script."
  exit 1
fi

echo "Enter SSH hostname connected to your Cloudflare Tunnel (example: ssh.example.com):"
read -r HOSTNAME

if [ -z "$HOSTNAME" ]; then
  echo "❌ Hostname cannot be empty"
  exit 1
fi

mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"

cat << EOF >> "$SSH_CONFIG"

Host $HOSTNAME
    ProxyCommand $CLOUDFLARED_BIN access ssh --hostname %h
EOF

chmod 600 "$SSH_CONFIG"

echo "✅ SSH config updated successfully!"
echo "You can now connect using:"
echo "    ssh $HOSTNAME"
