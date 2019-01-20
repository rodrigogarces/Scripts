#!/bin/bash

cd /opt/lampp/var/mysql
echo "List MySQL databases:"
ls -1 --ignore={"aria_log*","ib_logfile*","ibdata*","multi-master.info","performance_schema","phpmyadmin","mysql","*.err"}

echo ""
echo "Insert database to be deleted"
read database

if ls | grep -x $database >/dev/null 2>&1; then
    echo "Database found"
    echo "Bye database"
    sudo rm -r $database
else
    echo "Database not found"
fi
