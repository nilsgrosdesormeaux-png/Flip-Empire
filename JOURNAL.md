# Journal du projet (le plus récent en haut)

## 2026-11-05 : Claude de Nils (version 2026-11-05-1217)
- Sondage relié à Supabase (projet gicxucdtbibnpexzerjv) : vote = une ligne par joueur et par semaine (table public.votes). Si la table n'existe pas ou pas de réseau, le vote reste sur l'appareil (repli).
- À faire par Nils : exécuter le SQL de la table dans le SQL Editor (voir échange du 5 novembre).

## 2026-11-05 : Claude de Nils (version 2026-11-05-1145)
- Option « Pouvoir changer son vote » retirée. À la place : on peut changer son vote à tout moment de la semaine.
- Sondage plus visible : le bouton 🗳️ pulse en rose tant qu'on n'a pas voté cette semaine.

## 2026-11-05 : Claude de Nils (version 2026-11-05-1141)
- Sondage : 5e option « Pouvoir changer son vote ». Si elle gagne, on peut changer son vote la semaine suivante (testé : vote changé seulement avec le droit).

## 2026-11-05 : Claude de Nils (version 2026-11-05-1139)
- Sondage hebdo : 4 options publiées : refonte du foot, refonte de la famille, nouvelle ville (Istanbul, Le Caire, Sydney), choix mystère. ATTENTION : ces 4 options sont EN CONSTRUCTION, leur contenu n'est pas encore dans le jeu (le vote gagnant ne fait qu'afficher un message).
- À faire ensuite : refonte du foot (effectif de 15, composition), puis famille, puis les villes.

## 2026-11-05 : Claude de Nils (version 2026-11-05-1106)
- BUG CORRIGÉ : la fête de la ville (maire) était refaisable à l'infini (revenus ×1,5 à chaque fois, coût calculé sur les revenus). Maintenant une fois par an, et jamais pendant une fête en cours.
- Reste à vérifier : le coût de la fête est encore lié aux revenus (costSec).

## 2026-11-05 : Claude de Nils (version 2026-11-05-1017)
- BUG CORRIGÉ : les étoiles de franchise (2,5 milliards dans la partie de Nils) multipliaient tous les revenus par 10^8. Cause : une formule qui les calcule à partir de la racine du total gagné. Maintenant plafonnées à 20 (+200 %), et une sauvegarde qui en a plus est ramenée à 20 à la lecture.
- Panneau Diagnostic ajouté dans Empire.

## 2026-11-05 : Claude de Nils (version 2026-11-05-0938)
- BUG CORRIGÉ : à chaque nouvelle ville, le pécule était 200 × le prix de la ville (4 Qa € à la Lune) au lieu de 1,3 × la 1re boutique. Ça finançait toute la ville d'un coup (La Lune en 2 min). Maintenant : 1,3 × la 1re boutique de la nouvelle ville.

## 2026-11-04-2346 : personnages dessinés (version 2026-11-04-2346)
- Fusion du bloc AGENT PERSOS : personnages SVG à la place des emojis (héros, famille, rencontres, gérants, journal), écran de look, passants chibi, voitures/taxis/bus arrondis. Reste : chiens, look gardé dans la lignée.

## 2026-11-04 : Claude de Nils (version 2026-11-04-2345)
- Courbe de difficulté refaite : 1re ville ~25 min, puis ~+27 % par ville, ~43 h pour les 14 villes (≈ 2 h/jour pendant 3 semaines), mesuré avec un joueur auto (scratchpad prog/sim2.js).
- Réglages : cityDiff 1,58 → 1,35 ; pgK(c) remplace PG_K0/PG_KR (+ PG_KADJ par ville) ; PG_LVB 8 → 4 ; BIZ_GATE_K 5 → 2 ; commerce phare moins cher ; Rio 80 % ; adversaire de mairie plus faible au début.
- À trancher avec Nils : la mort du héros (~1 vie = 5 h réelles) fait perdre 30-50 % des niveaux à chaque succession et casse ce rythme ; le personnel permanent est peu rentable.
- En cours : personnages dessinés (SVG) à la place des emojis, passants et véhicules.

## 2026-11-04 : Claude de Nils (version 2026-11-04-2259)
- Chrono de progression : Empire → « Temps par ville » affiche, pour chaque ville, le temps réel pour avoir 8 affaires ouvertes et tout au niveau 20. Sert à calibrer la progression avec les vrais temps de Nils.
- Simulation de progression (prog2.js, hors jeu) : pas fiable en valeur absolue (ne compte ni les encaissements manuels, ni les loyers, ni les objectifs). À remplacer par les temps réels du chrono.

## 2026-11-04 : Claude de Nils (version 2026-11-04-2248)
- Personnel (recrutement pour la satisfaction des clients) : prix FIXE, lié au prix du commerce de la ville (1er niveau 0,5×, 2e 2×, 3e 6×). Il ne dépend plus des gains. Avant : jusqu'à 5 Md € en ville 1.
- Reste : vérifier en jouant le prix des gérants et des améliorations, qui sont aussi fixes par ville.

## 2026-11-04 : Claude de Nils, agent persos (non publié, fe-build inchangé)
- Bloc AGENT PERSOS (avant BOOT) : fini les emojis de personnes. Un générateur `charSVG(desc, opt)` dessine des persos « jouets 3D » (grosse tête, sans contour, ombrage doux). Héros, couple, enfants, rencontres, gérants, lignée, événements, journal, boutique, bulle du QG.
- Look (Vie → Moi) refait : grand aperçu, onglets Coiffure / Couleurs / Tenue / Accessoires, vignettes dessinées. Choix gardé dans `S.hero.ch` (optionnel ; sinon look tiré du prénom + ancien emoji, l'ancien `S.hero.look` est repris). Costumes de la boutique = tenues/accessoires (mêmes ids).
- Ville : passants chibi (sprites en cache, enfants à la main, vélos, âgés), voitures/taxis/bus/camionnettes arrondis. `drawPerson` et `drawCarAt` remplacés (tram et rover lunaire inchangés).
- À faire : garder le look perso dans la lignée à la mort, chiens plus jolis, avis de Nils sur téléphone.

## 2026-11-04 : Claude de Nils (version 2026-11-04-2133)
- Retiré : le bloc AGENT RENDU3D (socle doré, boutons brillants…) : Nils le trouve « très IA », pire qu'avant. Retour au rendu de la version 1911.
- Nils n'aime pas non plus le look personnalisable (emojis) : à refaire. Prochaine passe graphique : skills de design (frontend-design, ux designer), vraie étude de Monopoly Go, rien de doré/brillant gadget.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1939)
- Graphismes, 1re passe « Monopoly Go » (bloc AGENT RENDU3D avant BOOT, style `<style id="r3-ui">`) : ville posée sur un socle arrondi dont la matière change par ville, bâtiments « gonflés » (arêtes éclairées, toits à débord, reflets), interface en relief (boutons brillants, argent doré 3D), pièces et éclats dorés aux gains.
- Plus riche à chaque ville : liseré doré dès Marseille, guirlande de nuit dès Londres, plus de reflets et de couleurs.
- Garde-fou de fluidité : si la carte est lente (>22 ms ~3 s), reflets fins et halo s'éteignent seuls. À vérifier sur un vrai téléphone.
- Pistes : dégradés de façades pré-dessinés, arbres plus ronds et brillants, bandeau du haut plus coloré, test 100 joueurs, adoucir la difficulté après la 1re ville (à trancher avec Nils).

## 2026-11-04 : Claude de Nils (version 2026-11-04-1911)
- Blocs AGENT PROGRESSION (après FIN TUTORIEL) et AGENT MARSEILLE (après FIN AGENT VILLES). Réglages : PG_K0, PG_KR, PG_LV0, PG_LVA, PG_LVB, PG_NB, MGR_K, START_K, BIZ_GATE_K.
- Arrivée en ville avec 1,5× la 1re boutique ; le reste va au « trésor de l'empire » (non dépensable, +1 à +5 % de revenus par ville, max +50 %). Améliorations bien remises à zéro (vérifié sur 13 franchises).
- 1re ville plus douce (prix ×0,4, « Gagne X » = coût réel de conquête ≈ 19 Md €). 2 objectifs propres à chaque ville. Bourse : objectif en haut avec barre, « Acheter au max » / « Tout vendre ». Gérants = 4× l'ouverture. QG renommé « Tes locaux ». Ticket gagnant 1 fois sur 3. Marseille entre Lyon et Paris (anciennes sauvegardes décalées une fois).
- À trancher : les villes suivantes restent longues (×1,5 à ×2 par ville ; Ta ville 2 h 30, Paris ~37 h en joueur auto). Levier principal : cityDiff 1,58 (bloc IMMO), puis PG_LVB, BIZ_GATE_K.
- Reste : graphismes (Monopoly Go), test 100 joueurs.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1903)
- Bloc AGENT PERSO (avant BOOT) : naissance au hasard d'office (« Naître ») ; look modifiable (teint, cheveux dont blonds/roux, tenue, accessoire) dans Vie → Moi / Empire → Compte ; « Je cherche : une femme / un homme / peu importe » (défaut : autre genre) ; gérants au genre de leur nom.
- Mairie : pas de candidature avant le déblocage ; « Me présenter » à tout moment (partielle en 6 mois) ; carte « Faire monter la confiance » ; moitié de la campagne remboursée si élu.
- Énergie : fiche détaillée + « Prendre un mois de repos ». Clients : « Tout régler » = employés permanents d'abord ; boosts à part. Sondage expliqué, choix clairs, ouvert d'office 1×/semaine. Stade renommable. Code de transfert plus simple (FE2:…).
- Reste : vraie synchro = Supabase (compte + table des sauvegardes). En cours : économie/villes (Marseille, argent à l'arrivée, objectifs), puis graphismes.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1501)
- Bug corrigé : l'objectif bourse comptait le bénéfice net (une vente à perte le faisait reculer, et rien ne se comptait). Maintenant il additionne les bénéfices des ventes, par ville, sauvegardés dans S.counts.bourse.
- Objectif bourse : 10 000 € à Ta ville, ×3 à chaque ville (Londres 810 k €, Rio 65,6 M €).

## 2026-11-04 : Claude de Nils (version 2026-11-04-1456)
- Objectif bourse fixé à 10 000 € dans toutes les villes (demande de Nils, plus d'échelle selon les revenus).
- À trancher avec Nils : l'objectif « Gagne X dans cette ville » (cityGoal2) reste très élevé dans les grandes villes ; une valeur fixe serait plus simple mais trop facile à Rio.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1453)
- Objectif « Gagne X dans cette ville » trop dur à Rio (80 Sx € avant) : il vaut maintenant 10 minutes de revenu des 8 affaires au niveau 10 (Ta ville 2 Md €, Rio 867 Qa €). Coefficient à ajuster avec les retours de Nils (ligne cityGoal2).

## 2026-11-04 : Claude de Nils (version 2026-11-04-1445)
- Objectif bourse trop dur : il demandait 4,65 Md € à Londres (mesuré : impossible à atteindre). Maintenant proportionnel à l'entrepôt : prix × capacité × (0,4 + 0,1 × ville) → 24 k € à Londres, 1 440 € à Ta ville.
- À vérifier en jouant : si la bourse reste trop facile ou trop dure, ajuster le coefficient dans mktGoal2.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1137)
- Bloc TUTORIEL avant BOOT : tutoriel de départ (4 étapes) et onglets débloqués petit à petit (UNL : objectifs, vie, immo+bourse, club, mairie) ; S.unl et S.tut ; boutons Boutique/Sondage du bandeau et résultat du sondage masqués au début.
- Testé : vraie création de partie au clic, rechargement en plein tutoriel, ancienne sauvegarde et import d'ancien code = tout débloqué, franchise = tout reste débloqué.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1023)
- Tout ce qui s'achète coûte 20× plus cher (constante HARD_K dans cityPrices : commerces, niveaux, gérants, améliorations, logement QG, personnel, immeubles, rénovations) ; revenus et loyers inchangés ; argent de départ et d'arrivée = 1,3× la première boutique.
- Temps ×4 réservé au Pass Empire (sans pass : ×2 max ; une sauvegarde en ×4 repasse en ×2).
- Bonhomme doré (bonus d'argent) 4× plus rare : toutes les 3 à 7 min.

## 2026-11-04 : Claude de Nils (version 2026-11-04-1013)
- Difficulté (bloc DIFFICULTÉ avant BOOT) : un commerce ne s'ouvre que si le précédent atteint le niveau 10+8×ville ; objectifs de conquête qui grandissent avec la ville (niveau 75+30×ville, 15→60 % des bâtiments, satisfaction 70→88 %, gains ×1,5 par ville, division du club qui monte) ; immobilier plus cher en fin de voyage (prix ×cityDiff^1,25).
- Reste : vérifier en jouant que le rythme plaît à Nils (ajuster bizGate et conqGoals si trop dur).

## 2026-11-04 : Claude de Nils (version 2026-11-04-0941)
- Fait : onglets séparés Immo, Club, Mairie (8 onglets ; Bourse dans Affaires) ; 3 bugs META corrigés.
- Fait : progression par ville type hôtel de ville (prix ×1,58 de plus par ville), immobilier d'investissement (Tout acheter, Améliorer au max), bourse liée à la ville.
- En cours : nouvelles villes avant la Lune, ville vivante (suivre un habitant).

## 2026-11-04 : Claude de Nils, agent VIVANT (en ligne, version 2026-11-04-0958)
- Nouveau bloc `AGENT VIVANT` avant BOOT : passants avec une petite journée, files d'attente devant les commerces du joueur, bus (arrêts sur la 1re route verticale), taxis, camionnettes de livraison, distance entre voitures et carrefours, heures de pointe.
- Suivre un passant : toucher un bonhomme (jamais prioritaire sur un commerce) ou le bouton bonhomme sous les boutons de zoom. Fiche en bas à gauche, « Quelqu'un d'autre », « Recentrer » après un glissement.
- Rien de sauvegardé (aucun champ dans `S`). Remplace updateEnts, spawnLogic, spawnClient, spawnExit ; enveloppe genCity, drawPerson, drawCarAt, drawWorld, tapAt.
- Testé : 9 villes, ×4, rechargement, mobile et ordinateur, zéro erreur JS, images/s identiques à avant. Reste : changer `fe-build` à la fusion.

## 2026-11-04 : Claude de Nils (pause demandée par Nils)
- En ligne : version 2026-11-04b (déploiements GitHub Pages réussis). Si l'ancienne version s'affiche : ajouter `?v=123` au lien.
- Mis en pause : immobilier/économie et nouvelles villes/ville vivante. Le travail inachevé est dans `travaux-en-cours/` (patchs + LISEZMOI.md avec où on en est). À reprendre de là, pas de zéro.

## 2026-11-04 : Claude de Nils (version 2026-11-04b)
- Fait : décisions 2 à 4 fois moins fréquentes (écart minimum en mois et en secondes réelles, pas de répétition avant 4 ans), jeu en pause pendant une décision, bouton Pause/Reprendre dans le bandeau.
- Fait : retour après absence plafonné (plus de saisons/championnats en rafale ; gérants + loyers seulement, max ~2 h 30 de revenus), écran de retour.
- Fait : onglet Clients : « Tout régler » et « Embaucher partout ».
- Code : bloc AGENT RYTHME (après FIN AGENT DECISIONS). Tests : 0 erreur JS, anciennes sauvegardes OK, fuzz OK.
- En cours : immobilier/économie par ville, nouvelles villes + ville vivante.

## 2026-11-04 : autre séance Claude (mise à jour automatique)
- Fait : mise à jour automatique des joueurs (le jeu détecte une nouvelle version et se recharge seul, partie sauvegardée, jamais pendant un match en direct).

## 2026-11-04 : Claude de Nils (séance agents, version 2026-11-04a)
- Fait : prénoms accordés au genre (listes F/M, avatars assortis, textes accordés, choix femme/homme à la création, anciennes sauvegardes complétées).
- Fait : carte plus colorée par ville (lumière chaude, ciel, eau, arbres qui bougent) ; skins refaits et plus nombreux ; style des boutons/panneaux revu ; correctifs d'anciennes sauvegardes (bourse v8, club sans effectif, événement disparu) et divers.
- Attention : skins, interface et correctifs ont été coupés par la limite d'usage : publiés tels quels après tests (aucune erreur JS, 11 anciennes sauvegardes OK, fuzz 1500 clics + 150 mois × 9 villes OK). Rapport de bugs complet : 19 bugs, pas tous corrigés (G3, M6, M7 du bloc META restent ; vérifier les autres).
- Reste à faire : les nouvelles demandes de Nils (voir IDEES.md « Demandes du 4 novembre ») ; tests 100 joueurs à relancer ; finir skins/boutique payante plus attirante.

## 2026-11-03 : Claude de Nils
- Fait : mise en ligne (GitHub Pages, appli installable), sauvegarde robuste, bug New York (revenus négatifs) corrigé.
- Fait : club de foot et jour de match refaits, immobilier, vie de famille, décisions et mairie, boutique et sondage (sans paiement), carte redessinée, onglet Objectifs, bandeau d'erreur.
- Corrigé : « Chercher un sponsor » figeait le jeu en division haute (boucle infinie).
- Reste à faire : paiements réels et sauvegarde en ligne (serveur, ex. Supabase), vrai vote commun au sondage, remise à zéro après 14 jours (prête mais désactivée), style des boutons/panneaux, couleurs de la carte peut-être trop grises.
