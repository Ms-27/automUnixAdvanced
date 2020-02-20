#!/bin/bash

function menu {
    while true; do
        echo
        echo -e "1- Afficher l'heure\n2- Créer un noveau répertoire\n3- Créer une archive tar.gz\
        \n4- Déplacer une archive\n5- Lister le contenu d'une archive\n6- Décompresser l'archive\
        \n9- Sortir du menu"
        echo
        echo "Renseigner votre choix:"
        read choix
        case $choix in
            1)  echo
                date +%T;;
            2)  echo
                echo "Chemin du répertoire à créer:"
                read reppath
                mkdir $reppath;;
            3)  echo
                echo "Chemin de la source à archiver:"
                read path
                tar zcf ${path}.tar.gz $path;;
            4)  echo
                echo "Choix de l'archive:"
                read archive
                echo "Choix de la destination:"
                read path
                mv ${archive} ${path}
                ;;
            5)  echo
                echo "Chemin de l'archive:"
                read path
                echo
                echo "Elément(s):"
                tar -ztvf ${path} | awk '{print $6}'
                ;;
            6)  echo
                echo "Choix de l'archive:"
                read archive
                echo "Choix du répertoire où extraire:"
                read path
                tar xf ${archive} -C ${path}
                ;;
            9) exit 0;;
            *) echo "Choix non reconnu";;
        esac
    done
}

menu