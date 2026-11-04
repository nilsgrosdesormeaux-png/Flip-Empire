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
| Prénoms qui ne collent pas au genre | Fait (2026-11-04a) |
| Skins plus beaux et plus nombreux | En cours (première passe en ligne) ; boutique payante à rendre plus attirante |
| Bug « Chercher un sponsor » qui fige le jeu | Corrigé (version 2026-11-03c et suivantes) |
| Rendement qui baisse après une amélioration | Expliqué et rendu visible (fatigue −20 %, salaires du mercato affichés) |

## Prochaines pistes
- Vérifier avec Nils que le sponsor ne bloque plus (il avait peut-être une ancienne version en cache).
- Style des boutons et panneaux (agent prévu, pas encore fait).
- Couleurs de la carte, si Nils les trouve trop ternes.
- Serveur : comptes, sauvegarde en ligne, vrai sondage, paiements.

## Demandes du 4 novembre (pas encore faites)
- FAIT (04b) : retour en partie plafonné, plus de championnats en rafale.
- Club de foot et Mairie dans des blocs (onglets) à part.
- Immobilier beaucoup plus complet : vraie partie investissement, bien visible ; prix qui montent fort avec la ville ; acheter tout d'un coup et améliorer au maximum en un clic.
- FAIT (branche fe/villes) : bâtiments achetés/améliorés qui gardent le style de leur ville (Paris reste Paris, Tokyo reste Tokyo), avec corniche dorée et fanion pour les reconnaître.
- FAIT (branche fe/villes) : 13 villes. Rio, Shanghai et Atlantide (ville sous la mer) avant la Lune, puis Mars en dernier. Chacune a ses monuments, ses commerces, son marché, ses fêtes et une décision. Les anciennes parties sur la Lune sont replacées sur la Lune.
- FAIT (04b) : décisions moins fréquentes, pause pendant une décision, bouton Pause.
- La bourse doit dépendre un minimum de la ville.
- FAIT (04b) : « Tout régler » dans Clients.
- Commerces plus chers par ville, progression plus longue dans les villes avancées (courbe à la Clash of Clans : début facile, puis de plus en plus dur).
- Vie de la ville : habitants et voitures plus vivants, pouvoir suivre la journée d'un habitant par curiosité.
- Publier soi-même sur la branche après chaque tâche terminée et testée.
