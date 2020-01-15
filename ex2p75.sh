#!/bin/bash
echo "Renseigner un numéro de téléphone"
read a
pat="0[0-9]{9}"

if [[ ! $a =~ $pat ]]
then
	echo "Le numéro de téléphone n'est pas conforme"
else
	echo "Le numéro de télephone est conforme"
fi
