---
title: Fiche Crawling
date: 2013-08-14
tags: [Crawling, R]
---

#### Manipuler les chaînes de caractères

Il ne vaut mieux pas utiliser les outiles `R` de base, incohérents et compliqués.
Il faut utiliser le package `stringr`

```
paste("a","b","c", sep=",") 
paste(c("a", "b", "c"), collapse="|")
paste0("a","b","c") #sep="" par défaut

library(stringr)
str_count(string="il faut utiliser stringr", pattern="il")
str_detect(string="il faut utiliser stringr", pattern="il")
str_extract_all(string="il faut utiliser stringr", pattern="il")
str_extract(string="il faut utiliser stringr", pattern="il")
str_length("abcd") == nchar("abcd")
str_sub(string="il faut utiliser stringr", start = 1, end = -9)
str_trim("    DDD   ")
str_replace_all(string="abca", pattern="a", replacement="r")
```

Ensuite, c'est à chacun de connaître la façon de former des expressions régulières !
Pour d'autres détails :
```
?regex
grep
strsplit
system(command="awk ....")
```


#### Se connecter au web
Pour des besoins simples :
```
library(RCurl) # librairie très complète
raw_html = getURL("www.google.com")
```

Il est possible d'utiliser tout types de protocoles, POST par exemple : 
```
postForm = postForm(ui="www.annuaire.com",
                    .params = list(region="corse")
                    .opts = list(useragent="etc...."))
```

Noter qu'il est possible de décrire dans des objects les paramètres de connection (proxies, login) de façon à alléger l'écriture des fonctions qui réalisent les appels au web.
```
?getURL
?getCurlHandle
...
```


####Extraire des informations

Quand on a la page, elle est sous forme de texte brut.
Il faut la parser pour faire apparaître la structure du HTML.
```
library(XML)
doc = htmlParse(raw_html)
out = xpathApply(doc,"//li[@class='A']/input", function(x) xmlGetAttr(x, "value"))
out = unlist(out)

?xpathApply
?xmlGetAttr
?xmlValue
```

C'est forcement un peu de la cuisine.
Voir un exemple de code pour se faire une idée !

#### Méthode

A faire avant de crawler :
* Regarder si une API existe
* Ouvrir la page avec les outils développeurs de Chrome
  - "inspecter l'élément" est indispensable
* Regarder quelles requêtes sont envoyées, on les imitera


- S'il faut être authentifié, c'est un peu de boulot avec `RCurl` pour comprendre comment on utilise des cookies mais ça se fait. On a un exemple de code dans le crawl de l'annuaire de l'X.
- Si la page fait des requêtes AJAX dans tous les sens ça se fait
- Il faut voir vite si la page est volontairement très protégée.

#### Attention

Les sites n'aiment pas être crawlés. Il faut au moins :
* changer son IP avec des proxies
* varier son useragent 
* Mettre des temps aléatoires (>10s...) entre chaque requête
