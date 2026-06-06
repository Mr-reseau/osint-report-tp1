#!/bin/bash

# Script pour exécuter Sherlock sur le pseudonyme cible.
# Usage : ./run_sherlock.sh hacker_target2026

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME="$1"

if [ ! -d "sherlock" ]; then
  echo "Le dossier sherlock n'existe pas. Cloner le dépôt Sherlock d'abord."
  echo "git clone https://github.com/sherlock-project/sherlock.git"
  exit 1
fi

cd sherlock || exit 1
pip3 install -r requirements.txt
python3 sherlock "$USERNAME" --timeout 5
