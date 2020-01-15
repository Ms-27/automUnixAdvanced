#!/bin/bash
echo "Renseigner nom de repertoire"
read a

if [ -e ~/$a ]
then
	echo "Le repertoire existe déjà"
	echo $a "existe déja" >>  ~/error.log
else
	mkdir ~/$a
	echo "Le repertoire a été créé"
	echo "Le repertoire " ${a} " a été créé" >>  ~/log.log
fi
