# Idées du joueur (Nils) et où on en est

Liste d'envies de Nils, avec l'état au 2026-11-03. À mettre à jour quand un point avance.

## Façon de travailler avec Nils
- Parler en français simple, phrases courtes, sans jargon technique. Nils n'est pas développeur.
- Aller droit au but ; comptes rendus courts (5 lignes max quand c'est possible).
- Il teste surtout sur ordinateur (Chrome, Mac) et sur téléphone.
- Toujours tester avant de mettre en ligne : chaque bug en ligne le bloque dans sa partie.
- S'il demande des agents ou des « skills » : skills utiles = `frontend-design` (visuel), `design:design-critique`, `design:ux-copy` (textes), `code-review` (bugs).
- Objectif transversal : que le jeu n'ait PAS l'air fait par une IA (peu d'emojis, textes courts avec une voix, hiérarchie claire, style graphique cohérent).

## Ses idées, une par une
| Idée | État |
|---|---|
| Site en ligne + sauvegarde des parties | Fait (GitHub Pages, sauvegarde dans le navigateur, code de transfert entre appareils) |
| Raccourci type appli sur iPhone / Android | Fait (appli installable ; iPhone : Safari → Partager → Sur l'écran d'accueil) |
| Sondage hebdo, un vote par joueur, appliqué la semaine suivante | Fait en local (votes des autres simulés). Reste : vrai vote commun → serveur (Supabase, schéma prêt dans `supabase-schema.sql`) |
| Agents IA pour graphismes, bugs, intuitivité | Fait plusieurs passes (carte redessinée, onglet Objectifs, rangement, gros boutons) |
| Graphismes meilleurs à chaque ville | Fait (style par ville). Nils trouve peut-être la carte trop grise : à revoir avec lui |
| Pass payant mensuel, skins, objets utiles et esthétiques | Boutique + Pass Empire faits ; skins gagnables en jeu. Reste : vrai paiement (Stripe) → « bientôt » pour l'instant |
| 14 jours sans jouer = niveau à zéro, 2 € pour récupérer | Prêt mais désactivé (`INACTIVITY_RESET`) tant que le paiement n'existe pas |
| Voir les villes futures avant de les débloquer | Fait (Empire → Aperçu des villes à venir) |
| Décisions plus variées et moins de hasard | Fait (~55 nouveaux événements, chances affichées, issues liées aux stats) |
| Club de foot : progression plus longue, achats moins faciles, stade plus beau, vraies recettes | Fait (mercato négocié, recettes de match, jour de match refait) |
| Immeubles : graphismes et loyers qui comptent au max | Fait (loyers revus, immeubles rénovés visibles) |
| Maire et élections : moins de hasard, moins fréquent | Fait (mandats de 6 ans, campagne stratégique) |
| Famille : rencontre, enfants, logement, plus de contrôle | Fait (onglet Vie). Le mariage n'a pas été testé de bout en bout |
| Bug New York (argent négatif) | Corrigé |
| Bug « Chercher un sponsor » qui fige le jeu | Corrigé (version 2026-11-03c et suivantes) |
| Rendement qui baisse après une amélioration | Expliqué et rendu visible (fatigue −20 %, salaires du mercato affichés) |

## Prochaines pistes
- Vérifier avec Nils que le sponsor ne bloque plus (il avait peut-être une ancienne version en cache).
- Style des boutons et panneaux (agent prévu, pas encore fait).
- Couleurs de la carte, si Nils les trouve trop ternes.
- Serveur : comptes, sauvegarde en ligne, vrai sondage, paiements.
