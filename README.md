# osint-report-tp1

Ce dépôt contient le travail du TP 1 : OSINT – Traque Numérique, Pivotement et Métadonnées.

## Contenu du dépôt
- `TP1-OSINT-instructions.md` : description complète du TP et commandes à exécuter.
- `TP1-OSINT-rapport.md` : rapport d'enquête structuré à remplir et à livrer.
- `scripts/run_sherlock.sh` : script d'exécution de Sherlock.
- `scripts/run_exiftool.sh` : script d'analyse EXIF d'une image.

> Le rapport principal est dans `TP1-OSINT-rapport.md`; `README.md` sert de page d'accueil.

---

## 6. Commands Git pour finaliser
```bash
cd c:\Users\MOISE\Downloads\osint-report-tp1\osint-report-tp1
git add README.md
git commit -m "doc: Rapport final d'enquête OSINT"
```

Si vous devez pousser vers votre propre dépôt GitHub, mettez à jour l'URL distante :
```bash
git remote set-url origin git@github.com:VOTRE_USERNAME/osint-report-tp1.git
git push -u origin main
```

Si vous avez déjà les droits sur `origin`, utilisez simplement :
```bash
git push
```
