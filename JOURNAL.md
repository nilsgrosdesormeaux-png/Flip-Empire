# Journal du projet (le plus récent en haut)

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
