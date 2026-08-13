#!/bin/bash
set -e

echo "==> Đang cài đặt Hyggshi OS APT repository..."

# Add GPG public key
curl -fsSL https://hyggshi-os-foundation.github.io/apt-repo/hyggshi-archive-keyring.gpg | \
  sudo gpg --dearmor -o /usr/share/keyrings/hyggshi-archive-keyring.gpg

# Add repo source
echo "deb [signed-by=/usr/share/keyrings/hyggshi-archive-keyring.gpg] https://hyggshi-os-foundation.github.io/apt-repo stable main" | \
  sudo tee /etc/apt/sources.list.d/hyggshi.list > /dev/null

# Update package list
sudo apt update

echo ""
echo "✅ Hyggshi OS APT repository đã được thêm thành công!"
echo ""
echo "Các package hiện có thể cài đặt:"
echo "  sudo apt install nexfetch"
echo "  sudo apt install nexcode-ide"
echo ""
