# Backend Rails

## Objectif

Ce dossier prepare la structure backend de SpecForge sans executer automatiquement Rails dans le cadre de la formation.

## Qu'est-ce que Rails ?

Ruby on Rails est un framework web qui permet de construire rapidement une application backend en s'appuyant sur des conventions claires. Il fournit notamment:

- un routeur,
- des controleurs,
- des modeles,
- des migrations de base de donnees,
- une structure de projet standard.

## Architecture MVC

Rails suit le pattern MVC:

- `Model`: represente les donnees et la logique metier.
- `View`: gere l'affichage. Dans une API Rails, cette partie est minimale ou remplacee par des reponses JSON.
- `Controller`: recoit les requetes HTTP, appelle les modeles et retourne une reponse.

Dans un projet en mode API (`--api`), Rails est configure pour servir surtout du JSON. C'est adapte a SpecForge, car le frontend et le backend pourront etre separes.

## Organisation prevue pour SpecForge

Pour un MVP realiste, l'API peut commencer avec une seule ressource principale:

- `Analysis`: contient le texte source colle par l'utilisateur ainsi que la sortie structuree de l'analyse.

Cette approche est volontairement simple:

- elle evite de multiplier les modeles trop tot,
- elle colle au besoin principal du produit,
- elle reste plus facile a comprendre et a faire evoluer.

L'organisation backend la plus simple serait donc:

- `routes`: expose les endpoints JSON pour `analyses`,
- `controller`: recoit la requete HTTP et orchestre la reponse,
- `model`: stocke les donnees de l'analyse en base,
- `database`: conserve les enregistrements via les migrations Rails.

## Fichiers du dossier

- `commands.md`: liste des commandes Rails a executer plus tard pour creer l'API.
- `routes.rb`: exemple simple de declaration de routes pour la ressource principale.

## Important

Les commandes documentees ici sont preparees pour la formation. Elles servent a comprendre la structure backend, mais elles ne sont pas executees automatiquement dans ce depot.
