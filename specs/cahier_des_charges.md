# Cahier des charges - SpecForge

## 1. Contexte et objectif

SpecForge est un outil d'aide au cadrage technique en amont du développement.

Le problème visé est simple : beaucoup de tickets, issues GitHub ou briefs clients sont incomplets, ambigus ou mal structurés. Cette mauvaise définition initiale provoque ensuite des erreurs de compréhension, des oublis de cas limites, des estimations fragiles et de la dette technique.

L'objectif du projet est donc de permettre à un utilisateur de coller une demande textuelle brute puis d'obtenir une sortie structurée utile avant de commencer à coder :

- un résumé clair de la demande,
- les zones floues ou ambiguës,
- des questions de clarification,
- un plan d'implémentation simple,
- une première liste de tests ou cas limites.

Ce projet est intéressant car il traite une douleur fréquente, située très tôt dans le workflow. Si le cadrage initial est meilleur, les étapes suivantes le sont aussi.

## 2. Périmètre

### Ce qui sera développé dans la première version

La V1 doit rester volontairement limitée :

- un champ de saisie ou zone de collage pour un ticket, une issue ou un brief,
- une analyse du texte fourni,
- une sortie structurée en plusieurs blocs :
  - résumé,
  - questions de clarification,
  - plan d'implémentation,
  - risques ou points d'attention,
  - idées de tests,
- une interface simple, lisible et rapide à utiliser.

### Ce qui ne sera pas développé dans la première version

Pour éviter le sur-engineering, la V1 ne fera pas :

- de génération automatique de code,
- d'intégration IDE,
- de synchronisation directe avec GitHub, Jira ou Linear,
- d'analyse complète d'un dépôt de code,
- d'estimation automatique de délais,
- de prise de décision autonome sans validation humaine.

## 3. Personas

### Lea, développeuse web junior

Lea reçoit souvent des tickets incomplets. Elle veut comprendre rapidement ce qu'il faut faire avant de démarrer. Son attente principale est d'obtenir un résumé clair, les questions à poser et un plan simple pour coder avec plus de confiance.

### Karim, développeur freelance

Karim reçoit des briefs flous de plusieurs clients. Il veut réduire les allers-retours avant de chiffrer ou de lancer un projet. Son attente principale est d'identifier les zones d'ambiguïté, les dépendances et les risques.

### Ines, product builder dans une petite équipe

Ines rédige parfois des tickets trop rapides par manque de temps. Elle veut améliorer la qualité du handoff vers les développeurs. Son attente principale est d'obtenir une structure plus standard, ainsi que des critères ou questions manquants.

## 4. User stories

Les user stories sont triées par importance métier pour le MVP.

### 1. Résumer une demande floue

En tant que développeuse junior, je veux coller un ticket produit dans l'outil afin d'obtenir un résumé clair et exploitable de la demande.

Pourquoi c'est prioritaire :
le vrai problème résolu est la mauvaise compréhension initiale ; la douleur est forte ; la fréquence d'usage est élevée.

### 2. Faire émerger les questions de clarification

En tant que freelance, je veux que l'outil mette en évidence les zones floues d'un brief afin de poser les bonnes questions avant d'estimer ou de démarrer le travail.

Pourquoi c'est prioritaire :
cela réduit le risque de dérive de scope, qui est un risque fréquent et coûteux.

### 3. Générer un plan d'implémentation simple

En tant que développeur, je veux obtenir un plan d'implémentation découpé en sous-tâches afin de démarrer plus vite avec moins d'ambiguïté.

Pourquoi c'est prioritaire :
une bonne décomposition opérationnelle fait gagner du temps immédiatement et améliore l'exécution.

### 4. Suggérer des tests et cas limites

En tant que développeur, je veux recevoir une première liste de tests et de cas limites afin de réduire les oublis avant développement.

Pourquoi cette story est secondaire :
elle est utile, mais elle vient après la qualité du cadrage de base.

## 5. Contraintes

### Contraintes produit

- l'outil doit produire une sortie courte, structurée et réellement actionnable,
- la réponse ne doit pas être trop générique,
- l'utilisateur doit garder le contrôle final sur les décisions.

### Contraintes techniques

À vérifier :
le dépôt ne fixe pas encore de stack définitive pour l'application finale.

Contraintes déjà plausibles au vu du projet actuel :

- le MVP repose sur l'analyse de texte,
- l'interface peut rester très simple en V1,
- aucune intégration complexe ne doit être nécessaire au départ.

Si une stack doit être proposée pour rester cohérent avec les fichiers existants du dépôt, une piste raisonnable serait :

- frontend léger en HTML/CSS/JavaScript ou framework simple,
- backend API minimal,
- appel à un LLM pour produire la sortie structurée.

Cette proposition n'est pas une vérité du projet actuel. Elle devra être confirmée avant implémentation.

### Contraintes de performance

- le temps de réponse doit rester compatible avec un usage quotidien,
- l'interface doit afficher une réponse lisible sans surcharge visuelle,
- le résultat doit pouvoir être consulté rapidement avant de commencer à coder.

### Contraintes légales et de confidentialité

- les tickets ou briefs saisis peuvent contenir des informations sensibles,
- il faudra clarifier avant mise en production si des données client ou produit sont envoyées à un service tiers,
- une politique minimale de confidentialité sera nécessaire si l'outil est exposé à des utilisateurs externes.

## 6. Maquette

Maquette ASCII simple de la V1 :

```text
+---------------------------------------------------------------+
| SpecForge                                                     |
+---------------------------------------------------------------+
| Collez votre ticket / issue / brief                           |
|                                                               |
| ------------------------------------------------------------- |
| | "Ajouter une gestion des rôles sur l'espace admin..."     | |
| |                                                           | |
| ------------------------------------------------------------- |
|                                              [Analyser]      |
+---------------------------------------------------------------+
| Résumé                                                        |
| - Objectif principal                                          |
| - Périmètre implicite                                         |
+---------------------------------------------------------------+
| Questions de clarification                                    |
| - Qui peut accéder à quoi ?                                   |
| - Quels rôles existent déjà ?                                 |
+---------------------------------------------------------------+
| Plan d'implémentation                                         |
| 1. Identifier les rôles actuels                               |
| 2. Définir les règles d'accès                                 |
| 3. Implémenter et tester                                      |
+---------------------------------------------------------------+
| Risques / Tests                                               |
| - Cas limites                                                 |
| - Régressions possibles                                       |
+---------------------------------------------------------------+
```

## 7. Relecture avec l'IA

### Suggestion 1

Ajouter des critères de succès mesurables pour la V1, par exemple :

- temps moyen pour obtenir une réponse,
- taux de satisfaction perçue,
- utilité du résumé ou des questions générées.

Mon commentaire :
j'accepte cette suggestion sur le fond, car le cahier des charges actuel décrit bien les fonctionnalités mais pas encore la manière de juger si le MVP est réellement utile. En revanche, je ne fixe pas encore de métriques chiffrées précises car elles dépendront des premiers tests utilisateurs.

### Suggestion 2

Séparer plus explicitement la sortie en sections obligatoires avec un format constant afin d'éviter des réponses trop variables du LLM.

Mon commentaire :
j'accepte cette suggestion. C'est pertinent techniquement car la qualité perçue du produit dépendra fortement de la régularité de la structure de sortie. Un format stable réduira aussi la sensation de réponse "générique".

### Suggestion 3

Ajouter dès la V1 une intégration GitHub ou Jira pour importer automatiquement les tickets.

Mon commentaire :
je refuse cette suggestion pour la V1. Le vrai problème à valider n'est pas l'import automatique, mais la qualité de l'analyse produite. Ajouter une intégration trop tôt augmenterait fortement le scope, la complexité technique et les risques sans prouver la valeur centrale du produit.
