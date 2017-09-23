#!/bin/bash

echo "Lista de partições:"
sudo fdisk -l

echo ""
echo "Partição a ser montada:"
read particao

#ls | grep -x $particao
if sudo fdisk -l | grep  $particao >/dev/null 2>&1; then
    echo "Montando a partição..."
    sudo mount -t ntfs-3g -o remove_hiberfile $particao /media/windows
else
    echo "A partição informada não foi encontrada"
fi



