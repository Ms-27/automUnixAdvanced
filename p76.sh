#!/bin/bash

echo "Choisir le nombre d'élèves dans la classe:"
read nbr_eleves
if [ "$nbr_eleves" = "it's over" ]; then
    echo "error 42"
    exit 42
fi

saisie() {
    echo "Rentrer le ${1} de l'élève:"
    while [ ${#var} -gt 10 ] || [[ "${var:0:1}" =~ [[:lower:]] ]] || [ -z "$var" ]; do
        read var 
        if [ "$var" = "it's over" ]; then
            echo "error 42"
            exit 42
        elif [ ${#var} -gt 10 ] || [[ "${var:0:1}" =~ [[:lower:]] ]] || [ -z "$var" ]; then
            echo "Non conforme, rentrer à nouveau:"
        fi
    done
    echo "${1} OK"
}

saisie nom
nom=$var
var=""

saisie prenom
prenom=$var

note="255"
echo "Rentrer la note de l'élève (0-100):"
while [ $note -gt 100 ] || [ $note -lt 0 ]; do
    read note
    if [ "$note" = "it's over" ]; then
            echo "error 42"
            exit 42
    elif [ $note -gt 100 ] || [ $note -lt 0 ]; then
        echo "Non conforme, rentrer à nouveau:"
    fi
done

case $note in
    0?[1-9]|[1-3][0-9]|4[0-8])  appr="Eliminatoire";;
    49|5[0-9]|60)               appr="Peu mieux faire";;
    6[1-9]|7[0-5])              appr="Assez bien";;
    7[6-9]|[8-9][0-9])          appr="Bien";;
    100)                        appr="Tricheur";;
    *)                          appr="Problème";;
esac

echo $nom $prenom $note/100: $appr
echo $nom $prenom $note/100: $appr >> eleve.txt
if [ "$?" = "0" ]; then
    echo "Opération réussie"
fi