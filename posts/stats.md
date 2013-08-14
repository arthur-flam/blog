---
title: Algos stats
date: 2013-08-14
tags: [Crawling, R]
---

Algos utiles : florilège
========================================================

A lire *with a bit of salt*, car les idées à la base des méthodes présentées ici s'adaptent aux problèmes connexes.
Qu'on ne me dise pas "oula, non, c'est QUE de la classification pas du clustering..."

Statistiques descriptives
--------------------------------------------------------

Ce qu'on veut avoir souvent :
* Boxplots
* plots en tout genres
* répartitions
* densités
* moyennes
* médiannes
* quantiles
* outliers

Mais ce n'est pas toujours aussi simple que ça en a l'air.
* on a plein de données
* on a plein d'outliers
* on a un stream de données

Il faut des [méthodes intelligentes](http://infolab.stanford.edu/~ullman/mmds.html).
* Méthodes de bootstrap/samplings
* Calculer une médianne en stream est compliqué. Jeter un oeil aux algos du genre `remedian` ou `hyperlolog` etc est le bienvenue
* Pour ploter les données il faut parfois s'accrocher (overplotting)
  - Points transparents, creux, fins, avec du jitter
  - plusieurs panels pour représenter les données, données animées
  - Agrégation : histogrammes 2D, hexbins...
  - Le package `bigVis`, en développement, est prometteur.



Classification
--------------------------------------------------------

* k plus proches voisins
* Regressions logistiques
* Méthodes avec des arbres:
  - [Arbres de décision](http://freakonometrics.hypotheses.org/1279)  (CART, [C5.0](http://static.squarespace.com/static/51156277e4b0b8b2ffe11c00/t/51e67b45e4b0e6c130fb4d54/1374059333633/user_C5.0.pdf))
  - Forêts aléatoires (plein d'arbres sur des données amputées)
  - Boosting (plus de poids sur les données qui marchent le mieux)
* [SVM](http://www.cs.uu.nl/docs/vakken/mpr/slides/pr2012-svm.pdf)
* Réseaux de neurones
  - Plus ou moins de couches pour mettre de l'abstraction
  - Vive la complexité, mettre plein de données en entrée pour que ça marche
  - Difficile à interpeter
  - Extension avec le [deep learning](http://deeplearning.net/software_links/) (Machines de Bolztman restreintes et autres noms compliqués)
* Méthodes à maximisation de l'entropie
* Garder un oeil sur les méthodes d'over-under sampling pour les classes assymétriques (voir [SMOTE](http://www.cs.cmu.edu/afs/cs/project/jair/pub/volume16/chawla02a-html/chawla2002.html))
* ...

Bon, en vrai, on fait du Random Forests sans se faire chier, ou bien on fait du SVM en normalisant bien comme il faut les données. Ce dernier point est important et on a tendance à l'oublier un peu vite.

Clustering
--------------------------------------------------------

* k-means
* Distances -> Dendogrammes -> on coupe
- C'est un peu ce qu'on voit le plus.
- Se renseigner, voir ce qui est fait sur la [page clustering du projet R](http://cran.r-project.org/web/views/Cluster.html)
* Deep learning

Regressions
--------------------------------------------------------
* modèles linéaires
* modèles linéraires généralisés
* estimation non paramètrique en tout genres
* Projection pursuit regression and the like
* Les arbres de décision peuvent marcher


Ressources
--------------------------------------------------------
* Cours de [Coursera](https://class.coursera.org/ml-003/lecture/index)
* Polys d'un peu partout (Stanford [ici](http://cs229.stanford.edu/materials.html))
* [Sci-kit learn](www.sci-kit.learn.org)
