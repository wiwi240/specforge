# IDEAS

## Liste d'idees generees pendant le brainstorming

1. **Generateur de tests unitaires**
   Produit des cas de tests a partir d'une fonction ou d'un composant.
2. **Assistant de messages de commit**
   Propose des commits clairs a partir des changements detectes.
3. **Lecteur de pull request**
   Resume une PR, souligne les risques et propose des points de review.
4. **Assistant de refactorisation**
   Detecte du code trop complexe et suggere une simplification.
5. **Generateur de documentation technique**
   Produit une documentation de base a partir du code et de sa structure.
6. **Analyseur d'issues produit**
   Transforme une demande floue en specification technique exploitable.
7. **Coach de debugging**
   Aide a formuler des hypotheses de cause racine a partir des logs et erreurs.
8. **Assistant de migration legacy**
   Propose un plan progressif pour moderniser un ancien module.
9. **Estimateur de complexite**
   Donne une estimation de difficulte et signale les zones de risque.
10. **Generateur de jeux de donnees de test**
    Cree des fixtures coherentes pour developpement local et tests.

## Idee retenue

J'ai retenu l'idee **Analyseur d'issues produit**, que je renomme **SpecForge** pour le projet.

## Pourquoi ce choix

Cette idee me parait plus pertinente que les autres pour un premier projet:

- elle adresse une douleur concrete et frequente,
- elle a un scope MVP raisonnable,
- elle peut apporter de la valeur rapidement sans necessiter une integration lourde,
- elle aide a mieux penser avant de coder, ce qui limite les erreurs de comprehension.

## Evaluation rapide de l'idee retenue

1. **Vrai probleme resolu**
   Les demandes floues ralentissent le developpement et produisent de mauvaises decisions techniques.
2. **Niveau de douleur utilisateur**
   Moyen a eleve, surtout pour les juniors, freelances et petites equipes.
3. **Frequence d'usage**
   Elevee, car presque chaque tache commence par une phase de comprehension.
4. **Pertinence marche**
   Bonne, car les equipes cherchent deja a accelerer la phase de cadrage.
5. **Faisabilite technique**
   Bonne pour un MVP base sur l'analyse de texte.
6. **Scope MVP**
   Limite et realiste: input texte, sortie structuree, sans automatisation complexe.
7. **Risques d'echec**
   Risque de sorties trop generiques si le prompt et la structure ne sont pas bien cadres.
8. **Alternative plus pertinente**
   Un coach de debugging serait aussi utile, mais plus difficile a rendre fiable sans contexte riche.
