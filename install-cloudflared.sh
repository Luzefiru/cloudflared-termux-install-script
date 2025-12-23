#!/bin/sh

echo "Updating packages..."
yes "" | pkg update

echo "Installing packages: golang git debianutils make"
yes "" | pkg install golang git debianutils make

echo "Downloading cloudflared git repository (source code)..."
git clone https://github.com/cloudflare/cloudflared.git --depth=1
cd cloudflared
sed -i 's/linux/android/g' Makefile

echo "Building and installing cloudflared..."
make cloudflared
install cloudflared /data/data/com.termux/files/usr/bin

echo "Done!"
cat << 'EOF'
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⣶⣀⣴⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⢹⣿⣧⣤⠔⠀
⠀⠀⠀⠀⠀⣠⣴⣶⣤⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠿⠿⠷⠦⠄
⠀⠀⠀⢀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣀⡀⠀⠀⠀
⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣷⣦⠀
⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠸⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠃
EOF
