#!/bin/bash

cat ~/.ssh/id_rsa.pub 
echo "pressione 1 para terminar o script"
while read -s -r -n 1 tecla
   do
      if [ $tecla == '1' ]; then
	 echo "saindo..."
	 exit
      fi
   sleep 1
done
