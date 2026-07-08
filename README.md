# specforge

## Contexte

Ce projet a ete imagine dans le cadre du projet 01 de la formation vibecoding. L'objectif est de definir un premier outil de developpement assiste par IA avant de passer aux maquettes puis au code.

## Idee retenue

L'outil imagine s'appelle provisoirement **SpecForge**.

SpecForge aide un developpeur a transformer une demande produit floue, une issue GitHub ou un ticket en:

- plan technique clair,
- taches decoupees,
- points de vigilance,
- premiere proposition de tests.

## Pourquoi cette idee

J'ai retenu cette idee pour trois raisons:

1. Elle resout un vrai probleme: beaucoup de temps est perdu a clarifier une demande avant meme de coder.
2. La douleur utilisateur est frequente, surtout pour les profils juniors ou les petites equipes sans cadre produit fort.
3. Le MVP est realiste: on peut commencer par analyser du texte et produire un plan, sans devoir construire un agent complexe ou un IDE complet.

## Probleme vise

Quand une demande est mal definie, les developpeurs prennent de mauvaises decisions:

- scope mal compris,
- oublis de cas limites,
- tests insuffisants,
- dette technique introduite trop tot.

SpecForge cherche a reduire ce risque des le debut du travail.

## MVP envisage

Version 1:

- coller une issue, un ticket ou un brief,
- obtenir un resume de la demande,
- obtenir une proposition de plan d'implementation,
- obtenir une liste de questions bloquantes,
- obtenir une premiere liste de tests a prevoir.

## Structure du projet

- `README.md` : presentation du projet et de son contexte
- `docs/IDEAS.md` : liste d'idees explorees pendant le brainstorming
- `docs/PERSONAS.md` : profils utilisateurs cibles
- `docs/USER_STORIES.md` : user stories du MVP

## Cloner le projet

```bash
git clone https://github.com/wiwi240/specforge.git
cd specforge
```

## Etat actuel

Ce depot contient pour l'instant uniquement la phase de cadrage produit. Les maquettes et le code seront ajoutes dans les prochaines etapes.
