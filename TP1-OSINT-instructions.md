# TP 1 : OSINT – Traque Numérique, Pivotement et Métadonnées

## Objectif du TP
Comprendre comment un attaquant ou un analyste en cyber-renseignement peut cartographier une cible à partir d'un seul élément d'information (un pseudonyme ou un fichier).

## Objectifs pédagogiques
- Maîtriser le pivotement d'identifiants (Username Hunting).
- Analyser les données exogènes cachées (Métadonnées EXIF).
- Rédiger un rapport de renseignement structuré.

## Étape 1 : Traque de pseudonyme (Username Hunting)

### Outil principal
Sherlock : recherche un pseudonyme sur plus de 400 plateformes.

### Commandes
```bash
# Cloner le dépôt officiel de Sherlock
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
# Installer les dépendances requises
pip3 install -r requirements.txt
# Lancer la recherche sur le pseudonyme cible
python3 sherlock hacker_target2026 --timeout 5
```

### Mission élève
Identifiez au moins deux réseaux sociaux actifs de la cible et notez les URL trouvées.

## Étape 2 : Extraction de métadonnées (L'espion dans la photo)

### Outil principal
ExifTool : extraction des métadonnées EXIF et GPS d'une image.

### Commandes
```bash
# Installer ExifTool (Debian/Ubuntu/Kali)
sudo apt install exiftool -y
# Analyser l'image suspecte
exiftool cible_image.jpg
```

### Variante avancée
```bash
exiftool cible_image.jpg | grep -i -E "gps|location|latitude|longitude"
```

### Mission élève
Si des coordonnées GPS sont présentes, utilisez un outil de cartographie pour situer la position exacte de la prise de vue.

## Étape 3 : Restitution et push GitHub

Vous devez créer un dépôt nommé `osint-report-tp1` et y pousser un fichier de rapport.

### Commandes Git pour finaliser
```bash
git init
git add README.md TP1-OSINT-rapport.md
git commit -m "doc: Rapport final d'enquête OSINT"
git branch -M main
git remote add origin git@github.com:[USERNAME]/osint-report-tp1.git
git push -u origin main
```

> Si `origin` existe déjà et pointe vers un autre dépôt, utilisez `git remote set-url origin git@github.com:[USERNAME]/osint-report-tp1.git` avant le `git push`.
