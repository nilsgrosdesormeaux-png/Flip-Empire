# Travaux en cours (mis en pause le 2026-11-04)

Deux chantiers coupés en route. Ils ne sont PAS dans le jeu en ligne, PAS testés.
Ils partent de la version 2026-11-04a (commit 00d825a) ; ils s'appliquent encore sur la version actuelle.

Pour reprendre : `git apply travaux-en-cours/<fichier>.patch`, puis finir, tester (voir CLAUDE.md), publier, et supprimer le .patch.

## immobilier-economie.patch
Repris, fini et testé sur la branche fe/immo (bloc AGENT IMMO) ; fichier supprimé.

## Villes (fait, branche fe/villes)
Les villes et le style des bâtiments sont dans le bloc AGENT VILLES. Reste « ville vivante » (habitants, voitures, suivre un habitant), traité à part.

## Autres tâches en attente
- Club et Mairie dans des onglets à part.
- Boutique payante plus attirante ; bugs G3, M6, M7 du bloc META (charger un emplacement ne recharge pas la ville ; coffre du jour qui donne des jetons même refusé ; boutons Boutique/Sondage du bandeau jamais affichés).
- Relancer les tests « 100 joueurs » (2 groupes de 50, avis variés) et corriger d'après leurs retours.
