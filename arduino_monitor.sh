#!/bin/bash
echo Script is running
echo Press Ctrl^c to kill process

#configure arduino to work with serial streaming
stty -F /dev/ttyACM0 cs8 9600 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts -hupcl

while true; do
    temp=$(cat /sys/class/thermal/thermal_zone0/temp)
    temp=$((temp / 1000))
    #not precise, but kinda works
    mem=$(free -m | awk 'NR==2{printf "%s \n", $3 }')
    dat=$(date "+%d/%m %H:%M:%S")
    echo -ne CPU:$temp Mem:$mem $dat> /dev/ttyACM0
    sleep 1
done
