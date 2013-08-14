---
title: R on a server
date: 2013-08-14
tags: [Crawling, R]
---

R on a server
========================================================

Installation de R
--------------------------------------------------------
```
sudo add-apt-repository  'deb http://cran.univ-lyon1.fr/bin/linux/ubuntu precise/'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 # |
gpg -a --export E084DAB9 | sudo apt-key add -            # |-> il faudrait faire mieux que ces deux lignes...
# si ça ne marche pas on peut ajouter 'deb ...' dans /etc/apt/sources.list 
sudo apt-get update
sudo apt-get install -y r-base 
sudo apt-get install ess # plugin pour emacs

# Puis installer les packages voulus sur la machine, éventuellement avec un script R.
sudo R CMD javareconf # si besoin pour les dépendances en java
```


Installation de RStudio sur le server
--------------------------------------------------------
Il est possible d'installer RStudio et son GUI sur un serveur distant.
Lire [la doc](http://www.rstudio.com/ide/docs/server/getting_started) de RStudio, en particulier [ce qui concerne l'installation](http://www.rstudio.com/ide/download/server).

L'accès au server est ensuite simple :
```
http://<server-ip>:8787
```

**Attention**, il peut être nécessaire de changer les permissions des fichers pour qu'ils puissent être enregistrés par RStudio.
Par ailleurs, il faut veiller à bien [configurer le serveur](http://www.rstudio.com/ide/docs/server/configuration) (login...)

Autres moyens de faire faire des calculs par un serveur
--------------------------------------------------------
S'intéresser au projet [Open CPU](https://public.opencpu.org/pages/), qui repose sur `R` et `LaTex`.
Pour construire des API il est également possible de jeter un oeil aux projets variés de serveurs sous `R`...
