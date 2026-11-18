# Travaux en cours sur fe/visuel (mis en pause le 2026-11-18)

## interieur-jouet-3d.patch — intérieur des boutiques façon jouet 3D isométrique (Whiteout Survival)
- État : bien avancé, PAS encore publié dans le jeu. 2 étapes faites : rendu isométrique jouet (pièce en coupe, volumes à 3 faces, ombres), « recettes » de décor par commerce et par ville (136 combinaisons), retouches (éléphant de Nantes, souk d'Istanbul).
- Testé par l'agent : anciennes sauvegardes OK. Restait à faire : passage en revue des 136 combinaisons, planche de captures, revue de design, commit final.
- Reprendre : sur fe/visuel, `git apply travaux-en-cours/interieur-jouet-3d.patch`, finir la revue, tester (bloquer Supabase dans les scripts Playwright), commit « Intérieur des boutiques : jouet 3D isométrique, une scène par commerce et par ville », supprimer ce .patch, `git push origin fe/visuel`.
- Ne touche que le bloc AGENT INTERIEUR (dessin) : pas aux textes, Objectifs, boutons d'achat, Équipe, tutoriel (moitié de l'autre Claude, branche fe/simple).
