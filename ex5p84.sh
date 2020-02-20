#!/bin/bash

function input {
    echo "Saisir un nombre"
    read a
}

function select-operator {
    select operator in 'add' 'sub' 'prod' 'div'
    do
        echo "Choix: ${operator}"
        operator_value=$operator
        break
    done
}

input
nb1=$a

select-operator

input
nb2=$a

if [ $operator_value == "add" ]; then
    let "result=nb1+nb2"
elif [ $operator_value == "sub" ]; then
    let "result=nb1-nb2"
elif [ $operator_value == "prod" ]; then
    let "result=nb1*nb2"
else let "result=nb1/nb2"
fi

echo "Le resultat est: ${result}"