---
title       : Polytechnique.org + LinkedIn
subtitle    : Crawling -> Steming -> Scoring
author      : Arthur Flam & Karl Neuberger
job         : 
framework   : io2012   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : default      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}


--- class #id

<style>
em {font-style: italic}
strong {font-weight: bold;}
CSS : libraries\frameworks\io2012\css\default.css

</style>


## Plan 
  
1. Objectif initial et difficultés rencontrées
2. Présentation du crawling réalisé
3. Traitement de *text mining*
4. Scoring
5. Interface Shiny
6. Next steps


--- .sommaire #id1

## 1. Objectif initial et difficultés rencontrées


--- class #id

## Objectif initial

Lister des personnes à contacter pendant juillet/août pour alimenter le pipe commercial

- **Sources** : Linkedin, Annuaires X et HEC
- **Cibles** : Directeurs des études des grands groupes ou experts statistiques/Big Data
- **Objectif** : En trouver 100

--- class #id

<center>
<img src = "figure/linkedin_directeur-des-etudes.PNG" height="600px">
</center>


--- class #id

## Difficultés de la recherche sur LinkedIn

- Recherche textuelle : pas de clusters intelligents
- Sans payer : on n'a accès qu'à ses relations de 1er et 2e niveau
- Tous les X ne sont pas sur "Ecole polytechnique Alumni"
- Difficile de rentrer en contact (In-mails payants, polytechnique.org peu consultés)

## Avantages

- Informations souvent actualisées

--- class #id
<center><img src = "figure/rechercheX1.PNG" height="600px"></center>

--- class #id

<center>
<img src = "figure/rechercheX2.PNG" height="600px">
</center>

--- class #id

## Difficultés de la recherche sur Polytechnique.org

- Recherche avancée pas intelligente
- Peu de résultats
- Profils pas toujours mis à jour

## Avantages

- Souvent : e-mails professionnels
- Informations "premium"

--- class #id

## Notre idée

<center>
<img src = "figure/idee.jpg" height="200px">
</center>

- Croiser les données de Polytechnique.org et LinkedIn
- Recherche intelligente 
- Recherche exhaustive

--- .sommaire #id1

## 2. Présentation du crawling réalisé


--- .class #id
## Crawling sur polytechnique.org

1. **Ok** pour tous les X dans le CAC40 (~1600)
2. Créeation d'une base de données des pages `html` de l'annuaire
3. On explose le compte de Karl

--- .class #id
## Crawling sur Linkedin

1. Recherche des profils Linkedin sur Google/Bing
  * Nom + Prénom + Promotion + Linkedin
  * Analyse de la correspondance des résultats
2. Création d'une base de données de profils Linkedin
3. Crawling difficile (~250)
  * Kické par Google même avec les proxies


--- .sommaire #id1

## 3. Traitement de *text mining*


--- .class #id
## Text mining 101

Le texte brut n'est pas évident à manipuler, on préfère
- enlever les nombres ou la ponctuation
- tout mettre en minuscules
- enlever les mots inutiles
- simplifier les mots `stemming`
- ...

Librairies `R`
- `tm` : gestion des corpus de texte, batch processing
- `stringr` : manipulation des `strings`
- `SnowballC` : stemming

--- .sommaire #id1

## 4. Scoring


--- .class #id
## Scoring

On s'intéresse aux fréquences d'apparition des mots qui apparaissent de concert avec `"statistiques"`, `"data"` ou `"études"`.

Algorithme inspiré du PageRank
1. On part de mot *racines*, on leur donne un score (50%)
2. On répartit les 50% restants aux mots qui leur sont liés

* Qu'est-ce qu'un mot lié ?
  - un mot qui apparait en même temps que le mot racine
  - Attention : il faut enlever les mots qui apparaîssent tout le temps


--- .class #id
## TF-IDF
### Fréquence (Term Frequency)
La fréquence d'un terme est le nombre d'occurrences de ce terme dans le document considéré (éventuellement avec un log)

### Inverse document frequency
La fréquence inverse de document est une mesure de l'importance du terme dans l'ensemble du corpus.
Poids plus important aux termes les moins fréquents, considérés comme plus discriminants
* $\mathrm{idf_i} =  \log \frac{|D|}{|\{d_{j}: t_{i} \in d_{j}\}|}$ avec
  - $|D|$ : nombre total de documents dans le corpus
  - $|\{d_{j} : t_{i} \in d_{j}\}|$ : nombre de documents où le terme $t_{i}$ apparaît

### Calcul de tf-idf
$\mathrm{tfidf_{i,j}} = \mathrm{tf_{i,j}} \cdot  \mathrm{idf_{i}}$

--- .class #id
## Un exemple

Je suis un **data** *scientist*

--- .sommaire #id1
## 5. Interface shiny

--- .class #id 
<iframe src="http://www.temp.quantmetry.com:3838/crawlAnnuaire/ShinyApp/" style:'width:100%; border:none'"></iframe>

--- .sommaire #id1

## 6. Next steps


--- .class #id
## Next steps

- Vaincre Google et Linkedin
- Ajouter Linkedin pour une recherche croisée
- Améliorer l'algo de recherche 
- Crawler *tous* les X, HEC, ECP, Ponts, Mines, Dauphine...

## Décidé

- Crawler tout l'X
- Charger les pages de l'X + CSS dans la BDD
- Faire un joli csv avec les mecs pertinents + nom/prénom/boîte...
- Mails automatiques
