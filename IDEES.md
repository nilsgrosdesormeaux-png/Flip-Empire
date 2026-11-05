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
- FAIT (onglets) : Club, Mairie et Immobilier ont chacun leur onglet en bas (8 onglets : Ville, Affaires, Immo, Club, Mairie, Vie, Objectifs, Empire). La Bourse est dans Affaires. Pastille rose tant qu'un nouvel onglet n'a pas été ouvert ; « ! » pour un match ou une campagne en cours. Boutique et Sondage visibles en haut (à droite des jauges).
- FAIT : bugs META (charger un emplacement recharge bien la ville ; coffre du jour sans jetons si refusé).
- FAIT : immobilier d'investissement (valeur, loyer, rendement, crédit, logements vides, pannes, carnet), « Tout acheter » / « Améliorer au max », dans l'onglet Immo.
- FAIT : bâtiments achetés/améliorés qui gardent le style de leur ville (Paris reste Paris, Tokyo reste Tokyo), avec corniche dorée et fanion pour les reconnaître.
- FAIT : 13 villes. Rio, Shanghai et Atlantide (ville sous la mer) avant la Lune, puis Mars en dernier. Chacune a ses monuments, ses commerces, son marché, ses fêtes et une décision. Les anciennes parties sur la Lune sont replacées sur la Lune.
- FAIT (04b) : décisions moins fréquentes, pause pendant une décision, bouton Pause.
- FAIT (fe/immo) : bourse locale, 4 valeurs dont le grand groupe de la ville ; prix et nervosité suivent la ville ; anciennes bourses revendues au cours du jour.
- FAIT (04b) : « Tout régler » dans Clients.
- FAIT (fe/immo) : prix ×12×1,58 par ville, revenus ×12 ; simulé : chaque ville prend 30 à 50 % de temps de plus (9 ou 14 villes). Boutons « Tout acheter » et « Au max » aussi pour les boutiques.
- FAIT : vie de la ville. Passants avec une journée (travail, déjeuner, courses, chien, footing, livreurs, touristes, bus), files d'attente devant tes commerces (plus longues quand ils marchent bien), bus avec arrêts, taxis, camionnettes de livraison, petits bouchons, heures de pointe. Toucher un passant (ou le bouton bonhomme sur la carte) : la caméra le suit et une fiche montre son prénom, son métier et la suite de sa journée.
- Publier soi-même sur la branche après chaque tâche terminée et testée.
- FAIT (version 2026-11-04-1137) : tutoriel de départ en 4 étapes (carte « Tutoriel » + bouton Passer, à revoir dans Empire) ; au départ seuls Ville, Affaires et Empire sont visibles, puis Objectifs (3 ventes), Vie (2 boutiques), Immo + Bourse (3), Club (5), Mairie (6), avec une carte d'explication à chaque déblocage ; tout reste débloqué après la 1re franchise et pour les anciennes parties.

## Demandes du 4 novembre au soir (faites en 2026-11-04-1911 sauf graphismes)
Priorité de Nils : des graphismes beaucoup plus poussés (référence : Monopoly Go), plus beaux à chaque ville. À faire EN DERNIER, après le jeu. Publier souvent, s'arrêter avant 70 % de la limite d'usage.
- Économie : arriver dans une nouvelle ville avec peu d'argent (aujourd'hui tout s'achète en 30 s à Rio/Shanghai) ; améliorations remises à zéro à chaque ville ; 1re ville plus simple, objectif « gagne X » ≈ ce qu'il faut pour maxer la ville (~50 Md en 1re ville) ; nouveaux objectifs à chaque ville ; bourse à revoir (objectif parfois trop dur, accès plus clair) ; gérants moins chers (proportionnels à la boutique) ; « Logement » en double (QG ≠ maison) ; vérifier que les revenus du club vont au bon endroit ; ticket à gratter qui gagne plus souvent ; Marseille avant Paris.
- Perso et vie : naissance au hasard d'office ; personnaliser son perso après la création (blond, tenue, accessoires) ; couple homme-femme par défaut sauf choix ; personnages au genre de leur prénom partout.
- Mairie : pas de candidature avant le déblocage de l'onglet ; ne pas attendre trop longtemps une élection quand l'objectif l'exige ; expliquer comment avoir la confiance maximale ; rembourser la moitié de la campagne si élu.
- Énergie : vérifier comment on la regagne. Clients : vérifier la page, « Tout régler » paie d'abord les employés permanents.
- Sondage : présenté d'office, mieux expliqué, 4 choix compréhensibles, un vote par joueur, appliqué la semaine suivante.
- Club : renommer son stade. Synchro ordinateur/téléphone (vraie synchro = serveur ; en attendant, code de transfert plus simple).

## Sondage hebdo : nouvelles options (demande du 5 novembre, à construire)
Règle : chaque option change le jeu pendant plusieurs semaines et a un inconvénient (pas seulement un bonus de la semaine).

### Club de foot
- Interface du club refaite (un seul écran clair : effectif, tactique, finances, stade, supporters).
- Effectif de 15 joueurs maximum. Au-delà : option payante « banc élargi » (plus de joueurs, plus de salaires).
- Composition de match en grand sur l'écran : terrain visible, poste de chaque joueur, remplaçants, consignes.
- Vision du match plus développée et réaliste (passes, tirs, positions) au lieu de la simple frise.
- Idées retenues du sondage : centre de jeunes (formation gratuite, entretien cher), droits TV d'un match par mois (argent fixe, moins de supporters), tournée d'été (recettes, fatigue et blessures).

### Vie de famille
- La famille se déplace dans la ville (style Sims) : on voit les personnages marcher, aller à l'école, au parc, au travail.
- Une vraie maison avec la famille dedans (pas un « siège social » abstrait).
- Idées retenues : école de quartier (enfants progressent, frais mensuels), week-end en famille (couple et santé montent, argent et énergie baissent), un chien (bonheur familial, frais chaque mois).

### Ville et carte
- Plan d'urbanisme : une zone rénovée, ses boutiques rapportent plus, chantier gênant pendant un mois.
- Marché de producteurs : clients fidèles, prix des produits un peu plus bas.
- Grand projet : candidature aux Jeux olympiques (chantier de plusieurs mois, grosse dépense, décision finale).

### Nouvelles villes
- Choix du joueur : une ville parmi trois. Trois villes à créer : **Istanbul** (bazar, Bosphore, ponts), **Le Caire** (pyramides, Nil, marché des épices), **Sydney** (opéra, port, plages).
- Une quatrième option : choix mystère (à définir plus tard, ne pas révéler).
- Chaque ville suit la même progression (+27 % de temps par ville) et a ses monuments, commerces et événements.

### Ordre proposé
1. Équipe de 15 joueurs et composition de match (club).
2. Famille qui se déplace et maison (vie).
3. Options de sondage sur le club et la ville.
4. Les trois nouvelles villes, puis le choix mystère.
