#!/bin/bash

cat ~/.ssh/id_rsa.pub
echo "Press 1 to stop script"
while read -s -r -n 1 key
   do
      if [ $key == '1' ]; then
	 echo "Bye..."
	 exit
      fi
   sleep 1
done
