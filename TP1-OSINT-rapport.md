# Rapport OSINT TP1 - Traque Numérique, Pivotement et Métadonnées

## 1. Contexte
Ce rapport présente le processus d'enquête OSINT réalisé à partir d'un pseudonyme et d'une image suspecte.

- Pseudonyme étudié : `hacker_target2026`
- Outils utilisés : Sherlock (username hunting), ExifTool (métadonnées EXIF)

## 2. Étape 1 - Traque de pseudonyme

### Méthodologie
1. Cloner Sherlock : `git clone https://github.com/sherlock-project/sherlock.git`
2. Installer les dépendances : `pip3 install -r requirements.txt`
3. Lancer la recherche : `python3 sherlock hacker_target2026 --timeout 5`

### Comptes découverts
- Kvinneguiden : `https://forum.kvinneguiden.no`
- LessWrong : `https://www.lesswrong.com/users/hacker_target2026`
- SoylentNews : `https://soylentnews.org/~hacker_target2026`
- Wikipedia central auth : `https://en.wikipedia.org/wiki/Special:CentralAuth/hacker_target2026?uselang=qqx`
- omg.lol : `https://hacker_target2026.omg.lol`

> Remarque : ces URL sont les résultats réels fournis par Sherlock pour le pseudonyme `hacker_target2026`.

## 3. Étape 2 - Extraction de métadonnées

### Méthodologie
1. Installer ExifTool.
2. Analyser l'image : `exiftool cible_image.jpg`
3. Filtrer les métadonnées GPS si nécessaire :
   - `exiftool cible_image.jpg | grep -i -E "gps|location|latitude|longitude"`

### Résultats extraits
- Modèle de l'appareil : `Sony ILCE-7M3` (exemple)
- Logiciel / application : `Adobe Photoshop Lightroom` (exemple)
- Date et heure du cliché : `2026:05:12 14:23:08` (exemple)
- Coordonnées GPS : `48.8566 N, 2.3522 E` (exemple)

### Localisation
- Si des coordonnées GPS sont détectées, utiliser Google Maps, OpenStreetMap ou GeoHack pour situer la position.
- Position estimée : `Paris, France` (exemple)

## 4. Chronologie de la traque
1. Pseudonyme trouvé sur un forum.
2. Recherche de présence sur des plateformes via Sherlock.
3. Extraction des métadonnées EXIF de l'image.
4. Géolocalisation et synthèse des informations.

## 5. Conclusion
- Comptes identifiés : Kvinneguiden, LessWrong, SoylentNews, Wikipedia central auth, omg.lol.
- Informations utiles extraites : présence multi-plateforme du pseudonyme, possible réutilisation d'un même alias.
- Localisation probable : à confirmer par cartographie GPS à partir des métadonnées EXIF de l'image.

## 6. Actions recommandées
- Documenter précisément les URL et les résultats ExifTool réels.
- Conserver une copie des sorties Sherlock et ExifTool comme annexes.
- Pousser le rapport final dans le dépôt `osint-report-tp1`.
