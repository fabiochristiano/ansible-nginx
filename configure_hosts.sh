#!/bin/bash

if [ ! -n "$(grep nginx.fac.com.br /etc/hosts)" ]
then
    echo "Nginx has been added on hosts"
    sudo -- sh -c -e "echo '172.17.177.100    nginx.fac.com.br' >> /etc/hosts";
else
    echo "Nginx has already been added on hosts"
fi
