#!/bin/bash

# Définir les variables de date et de répertoire
EXECUTION_DATE=$(date "+%Y%m%d-%H%M")
YEAR=$(date "+%Y")
MONTH=$(date "+%m")

# Définir les répertoires de projet et de logs
PROJECT_DIR=$PWD
LOGS_DIR=${PROJECT_DIR}/logs/${YEAR}/${MONTH}

# Créer les répertoires de logs si nécessaire
mkdir -p "${LOGS_DIR}"

# Message de début d'exécution
echo "================================== Start olist segmentation ====================================="



# Message de succès
echo "================================ SUCCESS: Customer segmentation Done ==================================="
