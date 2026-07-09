# Commandes Rails pour preparer le backend de SpecForge

> Ces commandes sont preparees pour la formation. Elles ne sont pas executees automatiquement dans ce depot.

## 1. Creer une application Rails en mode API

```bash
rails new specforge_api --api
```

Cette commande cree une nouvelle application Rails allegee pour exposer une API JSON plutot qu'un rendu HTML serveur.

## 2. Aller dans le dossier de l'application

```bash
cd specforge_api
```

Cette commande place le terminal dans le projet Rails nouvellement cree.

## 3. Generer la ressource principale

```bash
rails g scaffold Analysis source_text:text summary:text clarification_questions:text implementation_plan:text risks:text test_ideas:text
```

Cette commande cree la ressource principale `Analysis`, son modele, son controleur, ses routes, sa migration et les fichiers associes.

Pourquoi un seul objet ?

- Le MVP de SpecForge prend un brief en entree.
- Il retourne un resultat structure.
- Pour ce niveau de projet, regrouper entree et sortie dans une seule ressource reste plus simple et plus lisible.

## 4. Creer la base et lancer les migrations

```bash
rails db:create db:migrate
```

Cette commande cree la base de donnees puis applique la migration generee pour la table `analyses`.

Alternative equivalente si tu preferes separer les etapes:

```bash
rails db:create
rails db:migrate
```
