# Journal du projet (le plus récent en haut)

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
