#!/bin/bash

if [ $# = 0 ]; then
    name="liste"
else
    name=$1
fi

echo "* Liste des utilisateurs:" > ${name}.txt
awk -F ':' '{print $1}' /etc/passwd >> ${name}.txt
echo "* Liste des groupes:" >> ${name}.txt
awk -F ':' '{print $1}' /etc/group >> ${name}.txt