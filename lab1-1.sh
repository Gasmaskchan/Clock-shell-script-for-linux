#1/bin/bash

clear

echo "RAM usage:"
free -h | grep Mem | awk '{print "Used: " $3 " / Total: 
 $2}'

echo "Disk usage:"
df -h | grep -E '^/dev' | awk '{print $1 ": " $3 " used, " $4 " available (" $5 " used)"}'
