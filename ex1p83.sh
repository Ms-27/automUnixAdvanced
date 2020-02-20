#!/bin/bash

if [ $# = 0 ]; then
    echo "Renseignez un argument"
else
    if [ -f $1 ]; then 
        echo "${1} est un fichier"
    elif [ -d $1 ]; then
        echo "${1} est un répertoire"
    elif [ -L $1 ]; then
        echo "${1} est un lien symbolic"
    else
        echo "${1} n'est pas identifié"
    fi
fi