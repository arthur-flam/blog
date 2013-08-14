---
title: GGplot 2
date: 2013-08-14
tags: [Crawling, R]
---

Ggplot2 et graphiques
========================================================

Introductions`
--------------------------------------------------------

Ggplot a pour but de simplifier la construction de plots en spécifiant ce qu'on veut avec une "grammaire". C'est bien plus simple que les graphiques de base, très puissant, et ça fait très vite tout ce qu'on veut.
- [Cours d'intro à regarder](http://rug.mnhn.fr/semin-r/PDF/semin-R_ggplot2_JSueur_200510.pdf)
- [Présentation rapide](http://inundata.org/2013/04/10/a-quick-introduction-to-ggplot2/) pour être sûr de comprendre le concept
- [Encore une intro](http://www.ling.upenn.edu/~joseff/rstudy/summer2010_ggplot2_intro.html) pour confirmer
- [Intro](http://rug.mnhn.fr/semin-r/PDF/INED-SFdS-MNHN_Sueur_280411.pdf) à regarder pour les exemples ambitieux

Ressources
--------------------------------------------------------
- [La documentation](http://docs.ggplot2.org/current/) (essentiel car les exemples sont accompagnés des figures)
- [**Cheatsheat**](http://www.ceb-institute.org/bbs/wp-content/uploads/2011/09/handout_ggplot2.pdf) franchement très fournie. A avoir sous la main.


Conseils
--------------------------------------------------------
Ne pas hésiter à regarder sur [StackOverflow](stackoverflow.com/) ou Google les réponses au moindre problème.
S'intéresser à la théorie des graphiques et des couleurs
  - [Attention aux couleurs](http://freac.fsu.edu/download/MM-color.pdf)
  - [Belles palettes sur colorbrewer2](http://colorbrewer2.org/)
  - [I Want Hue](http://tools.medialab.sciences-po.fr/iwanthue/index.php)
  - [Noir & Blanc seulement](http://pbil.univ-lyon1.fr/R_svn/pdf/tdr18.pdf)
  
Le package `scales` ajoute des possibilités à `ggplot` pour gérer les échelles. C'est indispensable.

Les cartes
--------------------------------------------------------
Forcement, c'est un peu non trivial, mais on finit par trouver comment faire.
- Le package sympa c'est [`ggmap`](http://stat405.had.co.nz/ggmap.pdf). Regarder la présentation #1 des données de DataPublica. Fonctions de base : `get_map` puis `ggmap`
- [Plot maps like a boss](http://www.r-bloggers.com/plot-maps-like-a-boss/)
- Package [Open Street Maps](http://blog.fellstat.com/?p=356) : `osm`
- De l'inspiration [ici](http://spatialanalysis.co.uk/2012/02/great-maps-ggplot2/)
- Des trucs compliqués mais instructifs [ici](http://quantifyingmemory.blogspot.co.uk/2013/04/mapping-gdelt-data-in-r-and-some.html)
- Faire des [cartogrammes](http://www.omegahat.org/Rcartogram/) comme [ça](http://spatialanalysis.co.uk/2011/08/mapping-gcse-scores/)


Extensions éventuelles
--------------------------------------------------------
- [`GGally`](http://cran.r-project.org/web/packages/GGally/index.html) ajoute d'autres graphes
- Quand il y a beaucoup, beaucoup de données, on peut jetter un oeil à [BigVis](http://vita.had.co.nz/papers/bigvis.pdf) (en [développement](https://github.com/hadley/bigvis))
- La visualisation de modèles est un sujet à la mode. Voir :
  * La page de [Hadley Wickham](http://had.co.nz/model-vis/)
  * Ses travaux sur [les clusters](http://had.co.nz/model-vis/clusters.pdf)
  * Ou sur la [classification](http://had.co.nz/model-vis/interface-classification-boundaries.pdf)
  * Ou même sur la [pertinence des modèles](http://had.co.nz/stat645/graphical-inference.pdf). Voir aussi [ici](http://had.co.nz/stat645/model-vis.pdf).

