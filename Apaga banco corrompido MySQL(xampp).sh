#!/bin/bash

cd /opt/lampp/var/mysql
echo "Lista de bancos MySQL:"
ls -1 --ignore={"aria_log*","ib_logfile*","ibdata*","multi-master.info","performance_schema","phpmyadmin","mysql","*.err"}

echo ""
echo "Insira o banco a ser removido"
read banco

#ls | grep -x $banco
if ls | grep -x $banco >/dev/null 2>&1; then
    echo "Banco encontrado"
    echo "Vai apagar o banco"
    sudo rm -r $banco
else
    echo "Banco não encontrado"
fi
