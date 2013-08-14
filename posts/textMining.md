---
title: Text Mining
date: 2013-08-14
tags: [Crawling, R]
---

Algos utiles : florilège
========================================================

A lire *with a bit of salt*, car les idées à la base des méthodes présentées ici s'adaptent aux problèmes connexes.
Qu'on ne me dise pas "oula, non, c'est QUE de la classification pas du clustering..."

Text mining
--------------------------------------------------------
### Workflow courant en préatraitement
* All lower-case
* Remove punctuation, etc
* Remove common words
* Stemming (Porter's stemming...)

### Méthodes d'ananlyse typiques en NLP
* tf-idf
* Dérivés du PageRank ou de HITS
* [LDA](http://cran.r-project.org/web/packages/topicmodels/index.html)

### Des problèmes courants
De l'indispensable...
* Language detection
* Spam detection
* Maybe some spelling checks

Au plus compliqué :
* Analyse de sentiments
* Entity extraction
* Tagging
* Automatic summaries
* Translation
* Compréhension du langage naturel


Packages
--------------------------------------------------------
* `tm` fournit tout ce qu'il faut pour bien commencer 
* Pour faire de jolis wordclouds : `tagcloud` est bien, sinon il y a `wordclouds`.
* [`RTextTools`](http://cran.r-project.org/web/packages/RTextTools/index.html) pour faire de la classification
* `Snowball` fait du stemming dans R
* `qdap` est nouveau, je ne sais pas trop à quoi ça sert mais au cas où... 

Ressources
--------------------------------------------------------
#### Datasets
* ENRON dataset
* Google n-grams

#### Learn 
* Un [gros bouquin de text mining](http://perso.uclouvain.be/vincent.blondel/publications/08-textmining.pdf)
* RTextTools [blog & tutorial](http://www.rtexttools.com/)
* [TD sur `tm`](http://mediamining.univ-lyon2.fr/people/velcin//public/TM/td3-sujet.pdf)

### Be inspired
* [R+Twitter](http://heuristically.wordpress.com/2011/04/08/text-data-mining-twitter-r/#comment-103)
* aussi [ici](http://www.rdatamining.com/examples/text-mining) et [là](http://practicalquant.blogspot.fr/2010/04/text-mining-and-twitter.html)
* Idéologie du [parti Républicain](http://www.r-bloggers.com/the-rapidly-increasing-ideology-of-the-us-republican-party/)

### Avec d'autres langagues que R
* [NLTK](http://nltk.org/) en Python
* [Pattern](http://www.clips.ua.ac.be/pages/pattern-en) en Python
