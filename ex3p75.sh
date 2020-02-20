#!/bin/bash
echo "Renseigner un numéro de téléphone"
read a
pat="0[0-9]{9}"
pat2="0033[0-9]{9}"
pat3="^+33[1-9]{9}$"

if [[ $a =~ $pat ]] || [[ $a =~ $pat2 ]] || [[ $a =~ $pat3 ]]
then
	echo "Le numéro de téléphone est conforme"
else
	echo "Le numéro de télephone n'est pas conforme"
fi
