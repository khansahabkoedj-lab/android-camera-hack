#!/bin/bash
echo "🔥 Installing Android Hack Tool..."
pkg update -y && pkg install metasploit-framework apache2 python nodejs git -y
mkdir -p ~/AndroidHack payloads www
chmod +x ~/AndroidHack/run.sh
echo "✅ Installed! Run: cd ~/AndroidHack && ./run.sh"
