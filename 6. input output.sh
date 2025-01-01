#!/bin/bash

# Ecrire dans un fichier
history > liste_history.txt

# Ajout des elements sur dans les fichier
ls >> liste_history.txt

# Conservation des erreurs de commande dans un fichier
commande 2> error.log

# Utilisation du /dev/null
commande 2> /dev/null