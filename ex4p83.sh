#!/bin/bash

if [ $# = 0 ]; then
    name="répertoire courant"
    rep="."
else
    name=$1
    rep=$1
fi

echo "Nombre de fichiers dans ${name}:"
ls -l ${rep} | grep -v ^- | wc -l
echo "Nombre de répertoires dans ${name}:"
ls -l ${rep} | grep -v ^d | wc -l