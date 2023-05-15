#!/bin/bash

home=~/Scripts

cd $home
if [ ! -d backup ]
then
        mkdir backup
fi

sudo mysqldump -u root $1 > $home/backup/$1.sql
if [ $? -eq 0 ]
then
        echo "backup foi feito"
else
        echo "houve um problema"
fi
