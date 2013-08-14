---
title: Web apps
date: 2013-08-14
tags: [Crawling, R]
---

Création de web app avec R
========================================================


Shiny
--------------------------------------------------------
C'est la solution à la mode pour faire des applications web.
Deux applications ont été réalisées à Quantmetry :
* Hotelmetry
* Lead-metry

Pour s'y mettre :
1. [Tutoriel](http://rstudio.github.io/shiny/tutorial/) (20min)
2. [Le manuel sur CRAN](http://cran.r-project.org/web/packages/shiny/shiny.pdf)
3. [La page sur github](https://github.com/rstudio/shiny/)
4. [Le forum de discussions](https://groups.google.com/forum/#!forum/shiny-discuss)

En deux mots, un petit fichier `ui.r` spécifie l'interface HTML/CSS.
Les calculs et le traitement des inputs sont traités par un fichier `server.r`, qui renvoit des output.
La communication est rapide et le serveur qui se cache dessous c'est [`node.js`](http://nodejs.org/)

Pour en savoir plus :
- [Des articles récents sur r-bloggers](http://www.r-bloggers.com/search/shiny)
- [Intégration avec GoogleVis](http://lamages.blogspot.fr/2013/02/first-steps-of-using-googlevis-on-shiny.html)


Pour ce qui concerne l'hébergement des application `shiny` sur `shiny-server`, se référer à la fiche concernant *R sur un serveur*.


Graphiques interactifs
--------------------------------------------------------
Un des attendus du web c'est l'interactivité. Sans ça, on ne s'amuse pas vraiment !

### `rCharts`
Le package `rCharts` permet d'utiliser les librairies Javascript, en particulier `d3.js`, pour réaliser des graphiques dynamiques.
Le package génére du code HTML/JS qui peut ensuite être repris par `shiny` ou bien directement intégré à une page HTML.

[Site de rCharts](http://rcharts.io/)
  - [Gallerie](http://rcharts.io/gallery.html)
  - [Quickstart](http://ramnathv.github.io/rCharts/)
  - [Intégration avec `shiny`](http://ramnathv.github.io/rChartsShiny/)
Voir aussi les [supers exemples et articles](http://timelyportfolio.blogspot.fr/2013/07/slidify-did-that-and-that-and.html) de timelyportfolio (contributeur) concernant `rCharts`, `shiny` ou `GoogleVis`.

### GoogleVis
C'est une alternative à `rCharts` pour avoir des graphiques interactifs.
Il ne faut pas rater leurs [Motion Charts](https://code.google.com/p/google-motion-charts-with-r/), chers à [Hans Rosling](https://www.youtube.com/results?q=hans+rosling&um=1&ie=UTF-8&gl=FR&sa=N&tab=w1)

### D3.js
C'est **la** librairie pour faire des graphiques. 
Dans la plupart des cas le plus simple est d'utiliser les libraires JS qui en sont issues pour faire des graphiques. Se référer à celles qui sont supportées par `rCharts` :) 

Inspiration
--------------------------------------------------------
- [Plein d'autres exemples avec rCharts](http://timelyportfolio.blogspot.fr/2013/05/r-creates-d3javascript-charts-in.html)
- [2013 US budget proposal](http://www.nytimes.com/interactive/2012/02/13/us/politics/2013-budget-proposal-graphic.html)
- [Mike Bostocks's portfolio](http://bost.ocks.org/mike/)
- [Graham Roberts's portfolio](http://www.grahaphics.com/)
- [Gephi](http://gephi.org/features/), pour des graphes

