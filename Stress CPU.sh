#!/bin/bash
for i in 1 2 3 4; do while : ; do : ; done & done  #teste de estresse de cpu 
#(multicore - só para ao fechar o terminal)
echo "teste de estresse para RPi2 /RPi3 - quadcore"
echo "o teste está rodando..."
echo "pressione 1 para terminar o teste de estresse"
while read -s -r -n 1 tecla
   do
      if [ $tecla == '1' ]; then
	 echo "saindo..."
 	 killall -15 stress.sh #termina de maneira segura o processo
      fi
   sleep 1
done
