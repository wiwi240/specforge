# Bug Report

## 1. Script choisi

J'ai cree un petit script Ruby qui parcourt une liste d'etudiants et affiche leur moyenne.

## 2. Bug observe

Le script initial plantait avec l'erreur suivante :

```text
debugging/bugged.rb:8:in 'Object#average': undefined method 'sum' for nil (NoMethodError)
```

La trace montrait aussi :

- fichier : `debugging/bugged.rb`
- methode : `average`
- ligne fautive : `scores.sum / scores.length`

## 3. Ce que j'ai compris

Le programme essayait d'appeler `sum` sur `scores`, mais pour l'etudiante `Chloe`, la valeur de `scores` etait `nil`.

J'ai isole le probleme en :

- lisant la trace Ruby,
- regardant les lignes deja affichees avant le crash (`Allen: 15` puis `Theo: 11`),
- deduisant que le plantage arrivait sur la troisieme entree.

L'apport de l'IA a surtout ete de :

- expliquer ce que signifie `undefined method 'sum' for nil`,
- proposer une correction defensive,
- aider a refactorer le script en methodes plus claires.

## 4. Correction appliquee

J'ai remplace la logique fragile par une methode `average_score` qui verifie d'abord si `scores` est `nil` ou vide.

Avant :

```ruby
def average(scores)
  scores.sum / scores.length
end
```

Apres :

```ruby
def average_score(scores)
  return nil if scores.nil? || scores.empty?

  scores.sum.fdiv(scores.length).round(2)
end
```

Pourquoi ce changement :

- il evite l'erreur sur `nil`,
- il gere aussi le cas d'un tableau vide,
- il produit une moyenne decimale plus precise.

## 5. Refactoring realise

J'ai aussi ameliore la lisibilite du code :

- renommage de `average` en `average_score`,
- extraction d'une methode `formatted_average`,
- noms de variables plus explicites,
- separation entre calcul et affichage.

## 6. Linter

J'ai ajoute un fichier `debugging/.rubocop.yml` puis lance :

```bash
rubocop --config debugging/.rubocop.yml debugging/bugged.rb
```

Regles utiles dans ce contexte :

- limiter la longueur des lignes,
- garder des noms de methodes clairs,
- appliquer un style Ruby coherent,
- ajouter le commentaire `# frozen_string_literal: true`,
- preferer les quotes simples quand il n'y a pas d'interpolation.

## 7. Verification finale

Commandes utiles pendant le debug :

```bash
ruby debugging/bugged.rb
rubocop --config debugging/.rubocop.yml debugging/bugged.rb
```

Resultat final attendu :

```text
Allen: 15.0
Theo: 11.0
Enzoulette: no scores available
```

## 8. Resume

Le bug venait d'un appel de methode sur `nil`. Je l'ai trouve en lisant la trace Ruby et en observant quelle entree faisait planter la boucle. J'ai ensuite corrige le script, refactore le calcul pour clarifier les responsabilites, puis ajoute Rubocop pour nettoyer le style.
