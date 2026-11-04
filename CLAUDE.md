# Flip Empire : consignes pour Claude

Jeu de gestion en français, un seul fichier `index.html` (HTML + CSS + JS + canvas, ~5 500 lignes), hébergé sur GitHub Pages :
https://nilsgrosdesormeaux-png.github.io/Flip-Empire/

## Règles
1. Reste concis. Réponses et comptes rendus en français simple, sans jargon.
2. Ne réécris jamais `index.html` en entier : modifie seulement la fonction ou les lignes utiles (lis par extraits avec `grep -n` / `sed -n`).
3. Le site se met à jour tout seul à chaque `git push` sur la branche publiée (voir « Mise en ligne »).
4. Avant chaque push : teste (voir « Tests »), puis note ce que tu as fait dans `JOURNAL.md`.

## Structure de index.html
- Sections repérables par `/* ================= NOM ================= */` (DATA, STATE, ECONOMY, STORY EVENTS, CITY ENGINE, TAB VIEWS, GAME TICK, EVENTS, BOOT…).
- Blocs ajoutés ensuite, juste avant BOOT, chacun entre `/* ===== AGENT X ===== */` et `/* ===== FIN AGENT X ===== */` : ECO (club, immobilier), VIE (couple, enfants, logement), META (boutique, sondage, séries), GRAPHISME + CARTE (rendu de la carte), DECISIONS (événements, mairie), UI (objectifs, récompenses, rangement), MATCH (jour de match), FILET DE SÉCURITÉ (bandeau d'erreur).
- Une `function` redéfinie plus bas remplace l'originale : avant de modifier une fonction, vérifie avec `grep -n "function nom("` qu'elle n'est pas redéfinie dans un bloc plus bas.
- État du jeu : objet global `S`, sauvegardé dans `localStorage` (clé `flipEmpire_v9`). Tout nouveau champ doit être ajouté dans `newGame()` ou initialisé défensivement : les sauvegardes des joueurs doivent toujours se recharger.

## Pièges connus
- Jamais de boucle `do…while` / `while` sans limite : une boucle infinie fige toute la page (bug déjà vécu avec « Chercher un sponsor »).
- L'argent (`S.cash`) ne doit jamais devenir négatif ; refuser l'action si les fonds manquent.
- Les coûts et gains sont multipliés par `CITY_MULT(S.city)` (12^ville) : vérifier l'équilibre dans les 9 villes.
- Peu d'emojis, textes courts avec une vraie voix : le joueur ne veut pas que le jeu ait l'air « fait par une IA ».
- Paiements réels, comptes et sauvegarde en ligne : pas encore (pas de serveur). Les articles payants affichent « bientôt ».

## Tests (obligatoires avant push)
- Servir le dossier : `python3 -m http.server 8790` ; Playwright est installé (`require('playwright')`, `chromium.launch()`).
- Vérifier : aucune erreur JS (`pageerror`) au chargement et en jouant ; simuler des mois (`newDay(true)`) dans plusieurs villes ; argent jamais négatif ; une ancienne sauvegarde se recharge.
- Tester sur mobile (390×844) et ordinateur.

## Mise en ligne
- Branche publiée par GitHub Pages : voir Settings → Pages du dépôt (aujourd'hui `claude/zen-volta-wpuz92`, bientôt `main`). Pousser sur cette branche = mise en ligne en 1 à 2 minutes.
- À chaque mise en ligne, changer la version dans `<meta name="fe-build" content="…">` au format date + heure UTC, ex. `2026-11-04-0915` (`date -u +%Y-%m-%d-%H%M`) : deux Claude ont déjà publié chacun une « 04b », et les joueurs n'ont pas reçu la seconde (visible dans Empire → Compte) pour que le joueur puisse vérifier qu'il a la bonne version.
- Pour changer la version, ne remplace QUE la ligne `<meta name="fe-build" …>` (ex. `sed -i '/<meta name="fe-build"/s/content="[^"]*"/content="NOUVELLE"/' index.html`) : le même motif existe dans le code de mise à jour, et un remplacement global a déjà cassé le jeu en ligne. Vérifie ensuite la syntaxe (charger la page sans `pageerror`).
- Mise à jour automatique : le jeu compare son `fe-build` à celui du site (au lancement, au retour sur l'onglet, toutes les 5 min) et se recharge seul. Il faut donc TOUJOURS changer `fe-build` à chaque publication, sinon les joueurs ne reçoivent pas la mise à jour.

## IDEES.md
Les envies de Nils, leur état et sa façon de travailler. À lire en premier, à mettre à jour quand un point avance.

## JOURNAL.md
Après chaque séance, ajoute en haut de `JOURNAL.md` : la date, qui (ex. « Claude de Thomas »), ce qui a changé en 3-5 lignes, ce qui reste à faire. C'est ce qui permet à l'autre Claude de reprendre sans tout relire.
