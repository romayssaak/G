#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire courant
function count_files {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire actuel
file_count=$(count_files)

echo "Devinez combien de fichiers se trouvent dans le répertoire courant :"

while true; do
    read -p "Entrez votre réponse : " guess
    if [[ $guess -eq $file_count ]]; then
        echo "Bravo ! Vous avez trouvé le bon nombre de fichiers."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "C'est trop bas. Essayez encore."
    else
        echo "C'est trop haut. Essayez encore."
    fi
done
