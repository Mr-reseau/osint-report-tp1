#!/bin/bash

# Script pour analyser une image avec ExifTool.
# Usage : ./run_exiftool.sh cible_image.jpg

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <image-file>"
  exit 1
fi

IMAGE="$1"

if [ ! -f "$IMAGE" ]; then
  echo "Fichier introuvable : $IMAGE"
  exit 1
fi

exiftool "$IMAGE"

echo "\nDonnées GPS filtrées :"
exiftool "$IMAGE" | grep -i -E "gps|location|latitude|longitude"
