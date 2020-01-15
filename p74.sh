#!/bin/bash
echo "Renseigner un chiffre"
read a

if [[ $a = [0-9] ]]
then
	echo OK
else
	echo KO
fi
