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

# Exécuter le notebook de nettoyage et d'EDA
papermill notebooks/e-commerce-cleaning-and-eda.ipynb \
"${LOGS_DIR}/${EXECUTION_DATE}-e-commerce-cleaning-and-eda.ipynb" \
-k python39 --report-mode --log-output --no-progress-bar

# Vérifier si la première exécution a échoué
if [ $? != 0 ]; then
  echo "ERROR: failure during e-commerce-cleaning-and-eda execution!"
  exit 1
fi

# Exécuter le notebook de segmentation des clients
papermill notebooks/e-commerce-customers-segmentation.ipynb \
"${LOGS_DIR}/${EXECUTION_DATE}-e-commerce-customers-segmentation.ipynb" \
-k python39 --report-mode --log-output --no-progress-bar

# Vérifier si la deuxième exécution a échoué
if [ $? != 0 ]; then
  echo "ERROR: failure during segmentation!"
  exit 1
fi

# Message de succès
echo "================================ SUCCESS: Customer segmentation Done ==================================="
