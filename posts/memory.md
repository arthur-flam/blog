---
title: Mémoire
date: 2013-08-14
tags: [Crawling, R]
---

Mémoire
========================================================

R a besoin de mettre ses objets en mémoire. C'est vite compliqué de satisfaire à cette exigence.
S'il est possible d'augmenter la RAM, de travailler sur de gros serveurs loués à [AWS](http://aws.amazon.com/) par exemple, ou de faire executer les calculs par les bases de données elles-mêmes (MapReduce et cie), parfois il n'est pas possible de s'en sortir.

Pour travailler avec des objets sur le disque
--------------------------------------------------------

Plusieurs solutions existent :
- [Revue du problème et des solutions](http://www.matthewckeller.com/html/memory.html)
- [ff est un outil populaire](http://cran.r-project.org/web/packages/ff/index.html). Présentation [ici](http://user2007.org/program/presentations/adler.pdf)
- [SOAR](http://cran.r-project.org/web/packages/SOAR/vignettes/SOAR.pdf)
- [BigMemory](http://cran.r-project.org/web/packages/bigmemory/vignettes/Overview.pdf)


Quelques bonnes pratiques
--------------------------------------------------------
- Penser à `rm()` des objets de tems en temps s'ils sont très lourds.
- Penser à utiliser des matrices creuses quand il y a besoin. Elles stockent les coefficients des matrices sous la forme (i, j, value), et sont donc économes quand la matrice contient plein de 0. Voir les packages `Matrix` et `slam`. C'est l'implémentation de `slam` qui est retenue dans le package de text mining `tm`.



-> lien avec Rmongo
-> packages de calcul parallélisé
-> utilisation de matrices creuses

