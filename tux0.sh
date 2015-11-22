#!/bin/bash

# create and execute a script that greps eth0 in /proc/interrupts every 100ms
echo '#!/bin/bash' > /tmp/grep_interrupts0.sh
echo 'while :; do echo "***** cating interrupts *****"; grep eth /proc/interrupts; sleep 0.1; done' >> /tmp/grep_interrupts0.sh
chmod 777 /tmp/grep_interrupts0.sh
/bin/bash /tmp/grep_interrupts0.sh & 

# 1000 => @ 1000*1000 ticks start dumping and 20000000 => after ticks 20000000*1000 dump regularly i.e. 50 times a second
/sbin/m5 dumpresetstats 1000 20000000

echo "I am tux0 master but I am not in a mood to do any work today! I just wanna sleep ..."
sleep 7

echo "Had a good sleep of 7 seconds :P. Let's exit now!"
/sbin/m5 exit


