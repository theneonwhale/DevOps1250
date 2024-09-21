#!/bin/bash

echo "Operating System Version:"
lsb_release -a

echo -e "\nUsers with Bash Shell:"
getent passwd | awk -F: '$3 >= 1000 && $7 == "/bin/bash" {print $1}'

echo -e "\nOpen Ports:"
sudo netstat -tuln | grep LISTEN
