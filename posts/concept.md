---
title: Méta-joboard
subtitle: Trouver les meilleures offres d'emploi
author: Quantmetry
framework: bootstrap
mode: selfcontained
highlighter: prettify
hitheme: twitter-bootstrap
assets:
  css:
    - "http://fonts.googleapis.com/css?family=Raleway:300"
    - "http://fonts.googleapis.com/css?family=Oxygen"
---

<style>
.container { width: 1000px; }

body{
  font-family: 'Oxygen', sans-serif;
  font-size: 16px;
  line-height: 24px;
}

h1,h2,h3,h4 {
  font-family: 'Raleway', sans-serif;
}

h3 {
  background-color: #D4DAEC;
  text-indent: 100px; 
}

h4 {
  text-indent: 100px;
}
</style>

====================================
Trouver les meilleurs offres d'emploi
-------------------------------------

### Etapes de l'analyse

1. Chargement de la BdD de CVs

2. Input du CV
    * Linkedin
    * Upload
    
3. Recherche des termes saillants (-> `scoring`)
    * TF-IDF contre la BdD
    * Mots apparentés (cf Lead-Metry)
    
4. Requêtes **en parallele** sur plusieurs sites

5. Exploration **en parallele** des offres trouvées

6. Classement par TF contre le `scoring`

7. Output dans une application web


### Difficulté du crawling
- Il a lieu par *bursts*
- Il faut qu'il se réalise très vite
- Plusieurs sites / layouts d'offres d'emploi à gérer

### Difficultés du *text mining*
- Pas évident hors login via Linkedin
- Identifier la fonction de l'offre et non la description générale de l'entreprise
- Gérer l'expérience requise, les offres en CDI etc. Il est possible peut-être de préciser beaucoup de chose dans les requêtes envoyées aux sites.

