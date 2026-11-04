# Travaux en cours (mis en pause le 2026-11-04)

Deux chantiers coupés en route. Ils ne sont PAS dans le jeu en ligne, PAS testés.
Ils partent de la version 2026-11-04a (commit 00d825a) ; ils s'appliquent encore sur la version actuelle.

Pour reprendre : `git apply travaux-en-cours/<fichier>.patch`, puis finir, tester (voir CLAUDE.md), publier, et supprimer le .patch.

## immobilier-economie.patch (~300 lignes)
Objectif (voir IDEES.md « Demandes du 4 novembre ») :
1. Prix des commerces, gérants, améliorations, immeubles qui montent avec la ville (courbe type « hôtel de ville » : début facile, chaque ville +30-50 % plus longue). Écrire en fonction de l'indice de ville (doit marcher pour 12-14 villes).
2. Immobilier = vraie partie investissement visible : portefeuille, loyer, valeur, rendement, prêt, vacance, événements.
3. Boutons « Tout acheter » et « Améliorer au max ».
4. Bourse liée à la ville (+ migration des anciennes bourses).
État : l'agent venait d'écrire le bloc `/* ===== AGENT IMMO ===== */` (après FIN AGENT ECO). Rien de testé.
Note : CITY_MULT ne s'applique pas aux boutiques/gérants/améliorations/logements du QG.

## villes-ville-vivante.patch (~110 lignes)
Objectif :
1. Bâtiments améliorés qui gardent le style de leur ville (Paris reste Paris…).
2. 4-5 villes de plus avant la Lune (grandes villes, puis thèmes de fin type sous-marin / orbital / Mars) : toutes les tables par ville (CITIES, THEMES, C2PAL/CP, C2.sat, C2MAP, CITY_BIZ, MKT, bornes « 8 » codées en dur).
3. Ville vivante : routines des habitants, voitures, toucher un habitant pour le suivre (prénom accordé avec `gx`).
État : début seulement (préparation), le gros bloc `/* ===== AGENT VILLES ===== */` n'était pas encore écrit.

## Autres tâches en attente
- Club et Mairie dans des onglets à part.
- Boutique payante plus attirante ; bugs G3, M6, M7 du bloc META (charger un emplacement ne recharge pas la ville ; coffre du jour qui donne des jetons même refusé ; boutons Boutique/Sondage du bandeau jamais affichés).
- Relancer les tests « 100 joueurs » (2 groupes de 50, avis variés) et corriger d'après leurs retours.
