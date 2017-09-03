---
title: "Formation R Perfectionnement"
fontsize: 12pt
---



# \LARGE Objectifs et organisation

\subsection*{\LARGE Objectifs et organisation}

### \ 

\large 
Apprendre � perfectionner son utilisation de R : acqu�rir des points de rep�res, des r�flexes, des m�thodes de travail.

\bigskip \pause 

Effectuer un panorama structur� et hi�rarchis� de m�thodes et outils largement utilis�s. 

\bigskip \pause 

Prendre du recul sur le logiciel, comprendre certains modes de fonctionnement complexes.  

### \ 

\large 

1. Travailler sur des donn�es dans R : 

    - travailler efficacement (+++);
    - optimiser les performances (++);
    - programmer avec R (+);
    - interroger des bases de donn�es (++).
    
2. \pause Pr�senter des r�sultats avec R : 

    - faire des graphiques avec base R et `ggplot2` (++);
    - faire du reporting (+).

\normalsize \pause

**P�dagogie** : �quilibre entre pr�sentations et cas pratiques.

**Horaires (proposition !)** : 9h30-12h20, 13h40-16h30

### \ 

\large

Mercredi 21 juin

- Introduction + Travailler sur des donn�es 1 (2h)
- Cas pratiques (2h)
- Faire des graphiques avec `ggplot2` (2h)

\pause Jeudi 22 juin

- Travailler sur des donn�es 2 + R Markdown (2h)
- Cas pratiques (au choix, 4h)



<!-- setwd("/home/mc/oc/cours/Insee R/perf/#output/") -->
<!-- t <- read.csv("R_perf.csv") -->

<!-- u <- t -->

<!-- u[u == 0] <- NA -->
<!-- classement <- (rowSums(u[, -(1:2)] > 1, na.rm = TRUE) > 0) -->

<!-- u[!classement, -(1:2)] <- u[!classement, -(1:2)] / rowSums(u[!classement, -(1:2)], na.rm = TRUE) -->

<!-- u[classement, -(1:2)] <- apply(apply(u[classement, -(1:2)], 1, max, na.rm = TRUE) + 1 - u[classement, -(1:2)], 2, `/`,  rowSums(u[classement, -(1:2)], na.rm = TRUE)) -->

<!-- u <- colSums(u[,-(1:2)], na.rm = TRUE) -->
<!-- u <- u / max(u) -->
<!-- u <- cbind(data.frame(group = "Ensemble"), as.data.frame(t(u))) -->






# Introduction : Se\ perfectionner\ avec\ R

\subsection*{Introduction : Se\ perfectionner\ avec\ R}

### Conna�tre plus ou conna�tre mieux ? 

Comme tout langage statistique ou de programmation, R repose sur un ensemble d'instructions plus ou moins complexes. 

\pause \bigskip
Se perfectionner dans la ma�trise de R peut donc signifier deux choses : 

- �tendre son \og vocabulaire \fg{} d'instructions connues ;
- mieux comprendre les instructions d�j� connues.

\pause \bigskip
En pratique, les deux **vont de pair** : en d�couvrant de nouvelles fonctions, on est souvent amen� � mieux comprendre le fonctionnement de celles que l'on croyait ma�triser. 

### Plan de la partie

\Large 
<!-- \setlength{\parskip}{0pt plus 1fil} -->
\tableofcontents[currentsection, sectionstyle = hide, subsectionstyle = show/show/hide]


## Chercher (et trouver !) de l'aide

### Savoir utiliser l'aide du logiciel

� tout moment, taper `help(nomFonction)` ou `? nomFonction` affiche l'aide de la fonction `nomFonction`.


```r
# Aide de la fonction read.csv
? read.csv
```

\pause 

**Remarque** Pour afficher l'aide sur une fonction d'un *package*, il faut que celui-ci soit au pr�alable charg� (avec `library()` ou `require()`).

\pause La fonction `help.search()` ou la commande `??` permettent d'effectuer une recherche approximative:


```r
# Recherche � partir du mot-cl� csv
?? csv
```

### Chercher de l'aide en ligne

Bien souvent, le probl�me que l'on rencontre a **d�j� �t� rencontr� par d'autres**. 

\bigskip
Pour progresser dans la ma�trise de R, il ne faut donc surtout pas h�siter � s'appuyer sur les forums de discussion, comme par exemple [\underline{stackoverflow}](http://stackoverflow.com/questions/tagged/r).

\pause \bigskip
On gagne ainsi souvent beaucoup de temps en formulant le probl�me que l'on rencontre dans un **moteur de recherche** pour consulter certaines r�ponses.

\bigskip 
Quand une question semble ne pas avoir �t� d�j� pos�e, ne pas h�siter � la poser soi-m�me, en joignant alors un **exemple reproductible** (*minimal working example* ou MWE).

### Afficher le code d'une fonction

Quand l'utilisation d'une fonction pose probl�me (message d'erreur inattendu), il est souvent utile d'**afficher son code** pour comprendre d'o� vient le probl�me.

\pause Pour ce faire, il suffit de saisir son nom sans parenth�ses.

\footnotesize

```r
# Code de la fonction read.csv
read.csv
  ## function (file, header = TRUE, sep = ",", quote = "\"", dec = ".", 
  ##     fill = TRUE, comment.char = "", ...) 
  ## read.table(file = file, header = header, sep = sep, quote = quote, 
  ##     dec = dec, fill = fill, comment.char = comment.char, ...)
  ## <bytecode: 0x3c13ac0>
  ## <environment: namespace:utils>
```

\pause \normalsize
Afficher le code d'une fonction est dans certains cas plus difficile, *cf.* [\underline{stackoverflow}](http://stackoverflow.com/questions/19226816/how-can-i-view-the-source-code-for-a-function).

## D�couvrir de nouvelles fonctionnalit�s

### Se rep�rer dans les CRAN \protect\textit{Task Views}

Les CRAN *Task Views* recensent les fonctions et *packages* de fa�on th�matique. Elles sont mises � jour r�guli�rement et portent sur des th�mes vari�s:  

\pause

\footnotesize \href{https://cran.r-project.org/web/views/Bayesian.html}{Bayesian}, \href{https://cran.r-project.org/web/views/ChemPhys.html}{ChemPhys}, \href{https://cran.r-project.org/web/views/ClinicalTrials.html}{ClinicalTrials}, \href{https://cran.r-project.org/web/views/Cluster.html}{Cluster}, \href{https://cran.r-project.org/web/views/DifferentialEquations.html}{DifferentialEquations}, \href{https://cran.r-project.org/web/views/Distributions.html}{Distributions}, \href{https://cran.r-project.org/web/views/Econometrics.html}{Econometrics}, \href{https://cran.r-project.org/web/views/Environmetrics.html}{Environmetrics}, \href{https://cran.r-project.org/web/views/ExperimentalDesign.html}{ExperimentalDesign}, \href{https://cran.r-project.org/web/views/ExtremeValue.html}{ExtremeValue}, \href{https://cran.r-project.org/web/views/Finance.html}{Finance}, \href{https://cran.r-project.org/web/views/FunctionalData.html}{FunctionalData}, \href{https://cran.r-project.org/web/views/Genetics.html}{Genetics}, \href{https://cran.r-project.org/web/views/Graphics.html}{Graphics}, \href{https://cran.r-project.org/web/views/HighPerformanceComputing.html}{HighPerformanceComputing}, \href{https://cran.r-project.org/web/views/MachineLearning.html}{MachineLearning}, \href{https://cran.r-project.org/web/views/MedicalImaging.html}{MedicalImaging}, \href{https://cran.r-project.org/web/views/MetaAnalysis.html}{MetaAnalysis}, \href{https://cran.r-project.org/web/views/Multivariate.html}{Multivariate}, \href{https://cran.r-project.org/web/views/NaturalLanguageProcessing.html}{NaturalLanguageProcessing}, \href{https://cran.r-project.org/web/views/NumericalMathematics.html}{NumericalMathematics}, \href{https://cran.r-project.org/web/views/OfficialStatistics.html}{OfficialStatistics}, \href{https://cran.r-project.org/web/views/Optimization.html}{Optimization}, \href{https://cran.r-project.org/web/views/Pharmacokinetics.html}{Pharmacokinetics}, \href{https://cran.r-project.org/web/views/Phylogenetics.html}{Phylogenetics}, \href{https://cran.r-project.org/web/views/Psychometrics.html}{Psychometrics}, \href{https://cran.r-project.org/web/views/ReproducibleResearch.html}{ReproducibleResearch}, \href{https://cran.r-project.org/web/views/Robust.html}{Robust}, \href{https://cran.r-project.org/web/views/SocialSciences.html}{SocialSciences}, \href{https://cran.r-project.org/web/views/Spatial.html}{Spatial}, \href{https://cran.r-project.org/web/views/SpatioTemporal.html}{SpatioTemporal}, \href{https://cran.r-project.org/web/views/Survival.html}{Survival}, \href{https://cran.r-project.org/web/views/TimeSeries.html}{TimeSeries}, \href{https://cran.r-project.org/web/views/WebTechnologies.html}{WebTechnologies}, \href{https://cran.r-project.org/web/views/gR.html}{gR}

\pause \bigskip \normalsize
La liste de toutes les *Task Views* est accessible � la page : [\underline{https://cran.r-project.org/web/views}](https://cran.r-project.org/web/views).

### Consulter des sites, tutoriels, livres

De plus en plus de supports sont consacr�s � la pr�sentation et � l'enseignement des fonctionnalit�s de R, comme par exemple : 

- \pause le site [\underline{R-bloggers}](https://www.r-bloggers.com): articles en g�n�ral courts sur des exemples d'applications (de qualit� in�gale);

- \pause le site [\underline{bookdown.org}](https://bookdown.org): d�p�t de livres num�riques consacr�s � R �labor�s avec R Markdown (tr�s riches et tr�s complets);

- \pause le site de [\underline{RStudio}](https://www.rstudio.com): nombreux [\underline{aides-m�moires}](https://www.rstudio.com/resources/cheatsheets/) ou articles pr�sentant les fonctionnalit�s de l'�cosyst�me RStudio;

- \pause les ouvrages de [\underline{Hadley Wickham}](http://hadley.nz): [\underline{ggplot2: elegant graphics for data analysis}](https://github.com/hadley/ggplot2-book) (� compiler soi-m�me), [\underline{Advanced R}](http:/:adv-r.had.co.nz).

## Utiliser de nouveaux \protect\textit{packages}

### Acc�der � la documentation d'un *package*

Une des principales forces de R est d'�tre un langage hautement modulaire comptant **plusieurs milliers de *packages*** (0 au 21/06/2017).

\pause Toutes les informations sur un *package* sont accessibles sur sa page du *Comprehensive R Archive Network* (CRAN). 

**Exemple** https://CRAN.R-project.org/package=haven

\pause \bigskip On trouve en particulier sur cette page:

- les **d�pendances** du *package* (*Depends* et *Imports*);
- un lien vers sa **page de d�veloppement** (*URL*);
- une **version .pdf de son aide** (*Reference manual*)
- �ventuellement un ou plusieurs **documents de d�monstration** (*Vignettes*).

### Installer un *package* automatiquement

La fonction `install.packages("nomPackage")` permet d'installer automatiquement le *package* `nomPackage`. 

Les donn�es n�cessaires sont t�l�charg�es depuis un des d�p�ts du CRAN (*repositories* ou en abr�g� `repos`).

C'est la **m�thode � privil�gier**:  les d�pendances n�cessaires au bon fonctionnement du *package* sont d�tect�es et automatiquement install�es.

\pause 

**Remarque** Cette m�thode fonctionne � l'Insee:

- pour les installations locales de R sur les postes de travail;
- sur AUS, *via* un d�p�t local sp�cifique;
- mais PAS sur les sessions des postes de formation.

### Installer un *package* manuellement

La page d'information d'un *package* comporte �galement des liens vers les fichiers qui le composent. 

Quand l'installation directe depuis un d�p�t du CRAN est indisponible, il suffit de **t�l�charger ces fichiers** et d'**installer manuellement le *package***.

Pour une installation sous Windows, il faut privil�gier les **fichiers compil�s** (*Windows binaries*). 

\pause \small


```r
# Note : Le fichier haven._1.0.0.zip est situ� 
# dans le r�pertoire de travail
install.packages(
  "haven_1.0.0.zip", repos = NULL, type = "binaries"
)
```

### Installer des *packages* depuis github

En r�gle g�n�rale, le d�veloppement de *packages* s'appuie sur des plate-formes de **d�veloppement collaboratif** comme [\underline{Github}](https://github.com).

\pause La **page de d�veloppement** d'un *package* comporte plusieurs informations pr�ciseuses : 

- la derni�re version du *package* et de sa documentation;
- des informations sur son d�veloppement; 
- une zone pour rapporter d'�ventuels *bugs* (*bug reports*).

**Exemple** https://github.com/tidyverse/haven 

\pause La fonction `install_github()` du *package* `devtools` permet d'installer un *package* directement depuis GitHub.


```r
library(devtools)
install_github("tidyverse/haven")
```


### Utiliser les donn�es d'exemples d'un *package*

La plupart des **packages** contiennent des **donn�es d'exemples** utilis�es notamment dans son aide ou ses vignettes.

Une fois le *package* install�, il suffit d'utiliser la fonction `data(package = "nomPackage")` pour afficher les donn�es qu'il contient.


```r
library(ggplot2)
data(package = "ggplot2")
```

\pause Pour \og rapatrier \fg{} dans l'environnement global les donn�es d'un *package*, c'est de nouveau la fonction `data()` qu'il faut utiliser. 


```r
data(mpg)
```





# Travailler\ efficacement\ sur\ des\ donn�es\ avec\ R

## Travailler\ efficacement\ sur\ des\ donn�es\ avec\ R {.unnumbered}

### Qu'est-ce que travailler efficacement avec R ? 

Appliqu� au travail sur des donn�es, l'efficacit� peut avoir au moins deux significations distinctes : 

- efficacit� **algorithmique** : minimisation du temps pass� par la machine pour r�aliser une s�rie d'op�rations;
- **productivit�** du programmeur : minimisation du temps pass� � coder une s�rie d'op�ration. 

\pause En r�gle g�n�rale, on peut avoir l'id�e que plus on souhaite �tre efficace algorithmiquement, plus la programmation risque d'�tre longue et difficile. 

\pause \textbf{Ce n'est pas toujours vrai} : on perd souvent beaucoup de temps � (r�)inventer une m�thode peu efficace quand une beaucoup plus simple et rapide existe d�j�.

\pause \small

**R�f�rence** \textsc{Gillepsie C., Lovelace R.}, \textit{Efficient R programming} (disponible sur [\underline{bookdown.org}](](https://bookdown.org/csgillepsie/efficientR)))


### Mesure l'efficacit� algorithmique

La fonction `system.time()` permet de mesurer la dur�e d'un traitement. 

\footnotesize

```r
system.time(rnorm(1e6))
  ## utilisateur     syst�me      �coul� 
  ##       0.068       0.000       0.069
```

\pause \normalsize
N�anmoins, elle est inadapt�e aux traitements de tr�s courte dur�e. Dans ces situations, privil�gier la fonction `microbenchmark()` du package `microbenchmark`.

\footnotesize

```r
library(microbenchmark)
microbenchmark(times = 10, rnorm(1e6))
  ## Unit: milliseconds
  ##          expr      min       lq    mean   median
  ##  rnorm(1e+06) 66.47196 66.94083 68.3047 67.37058
  ##      uq      max neval
  ##  68.094 76.13308    10
```

### Mesurer la taille d'un objet en m�moire

R stocke l'ensemble des fichiers sur lesquels il travaille dans la m�moire vive.

Afin de loger les objets les plus gros mais aussi d'optimiser les performances, il est souvent utile de **limiter la taille des objets** sur lesquels portent les traitements.

\pause Pour mesurer la taille des objets, utiliser la fonction `object_size()` du *package* `pryr`. 


```r
library(pryr)
object_size(rnorm(1e6))
  ## 8 MB
```

### Construire un exemple reproductible (MWE)

Lorsque l'on cherche � am�liorer les performances d'un programme, il est important de pouvoir le tester sur des donn�es **autonomes et reproductibles**. 

\pause Pour ce faire, les **fonctions de g�n�rations de nombres al�atoires** de R sont particuli�rement utiles. 

\footnotesize

```r
# Graine pour pouvoir reproduire l'al�a
set.seed(2016)

# Vecteur de nombres de taille 1 000
a <- rnorm(1000)

# Vecteur de lettres de taille 1 000
b <- letters[sample(1:26, 1000, replace = TRUE)]

# Matrice logique 1 000 x 100 avec 1 % de TRUE
c <- matrix(runif(100000) > 0.99, ncol = 100)
```

### Plan de la partie

\large 
<!-- \setlength{\parskip}{0pt plus 1fil} -->
\vfill
\tableofcontents[currentsection, sectionstyle = hide, subsectionstyle = show/show/hide]
\vfill


## De l'importance des fonctions dans R

### \og Tout ce qui agit est un appel de fonction \fg{}

> *To understand computations in R, two slogans are helpful:*
>
> - *Everything that exists is an object.*
>
> - *Everything that happens is a function call.*
>
> *John Chambers*

\pause \footnotesize

```r
# ... m�me assigner une valeur
is.function(`<-`)
  ## [1] TRUE
`<-`(a, 10)

# ... m�me afficher la valeur d'un objet
a
  ## [1] 10
print(a)
  ## [1] 10
```

### D�finir une fonction dans R

Utilis� avec `<-`, `function()` d�finit une nouvelle fonction :

\pause \footnotesize


```r
# D�finition de la fonction monCalcul()
monCalcul <- function(a, b){
  resultat <- 10 * a + b
  return(resultat)
}

# Code de monCalcul()
monCalcul
  ## function(a, b){
  ##   resultat <- 10 * a + b
  ##   return(resultat)
  ## }

# Appel de la fonction monCalcul()
monCalcul(2, 3)
  ## [1] 23
```

### Valeurs par d�faut des param�tres

Des valeurs par d�faut peuvent �tre renseign�es pour les param�tres. 


```r
monCalcul <- function(a, b = 3) 10 * a + b
monCalcul(8)
  ## [1] 83
```

\pause Les valeurs par d�faut peuvent d�pendre des autres param�tres.


```r
monCalcul <- function(a, b = a * 2) 10 * a + b
monCalcul(2)
  ## [1] 24
```

\pause \textbf{Remarque} Ceci est la cons�quence de la *lazy evaluation* des arguments dans R (*cf.* [\underline{\textit{Advanced R}}](http://adv-r.had.co.nz/Functions.html#function-arguments)).

### Contr�le de la valeur des param�tres

Des structures conditionnelles `if()` permettent de contr�ler la valeur des arguments. 

\pause \footnotesize

```r
monCalcul <- function(a = NULL, b = NULL){
  if(is.null(a)) stop("a n'est pas renseign�.")
  if(is.null(b)){
    b <- a * 2
    warning("b n'est pas renseign�.")
  }
  return(10 * a + b)
}

monCalcul(b = 3)
  ## Error in monCalcul(b = 3): a n'est pas renseign�.
monCalcul(a = 1)
  ## Warning in monCalcul(a = 1): b n'est pas renseign�.
  ## [1] 12
```

### \large Port�e des variables et environnements (1)

Dans R **chaque objet est rep�r� par son nom et son environnement** : cela permet d'�viter les conflits de noms.

\pause \footnotesize

```r
# Cr�ation d'une fonction sum() un peu absurde
sum <- function(...) "Ma super somme !"
sum(2, 3)
  ## [1] "Ma super somme !"

# Cette fonction est rattach�e � l'environnement global
ls()
  ## [1] "a"         "b"         "c"         "monCalcul"
  ## [5] "sum"

# Mais on peut toujours acc�der � la fonction 
# de base en utilisant ::
base::sum(2, 3)
  ## [1] 5
```



### \large Port�e des variables et environnements (2)

\small
� chaque appel d'une fonction, un **environnement d'ex�cution** �ph�m�re est cr��.

\footnotesize

```r
maFun <- function() environment()
maFun()
  ## <environment: 0x754fdb0>
maFun()
  ## <environment: 0x87f3708>
```

\pause \small
En cons�quence, les instructions ex�cut�es � l'int�rieur d'une fonction **ne modifient pas l'environnement global**.

\footnotesize

```r
a <- 10
maFonction3 <- function(){
  a <- 5
}
maFonction3()
a
  ## [1] 10
```

### \large Port�e des variables et environnements (3)

En revanche, les objets d�finis dans l'environnement global sont accessibles au sein d'une fonction. 

\footnotesize

```r
a <- 10
maFonction4 <- function(){
  a + 5
}
maFonction4()
  ## [1] 15
```

\pause \normalsize
Ceci est d� au fait que les environnements dans lequel R recherche des objets sont **embo�t�s les uns dans les autres** (\textit{cf.} la fonction `search()`).

**Pour en savoir plus** [\underline{\textit{Advanced R}}](http://adv-r.had.co.nz/Environments.html#function-envs), [\underline{obeautifulcode.com}](http://blog.obeautifulcode.com/R/How-R-Searches-And-Finds-Stuff/)


### Valeur de retour d'une fonction

La fonction `return()` sp�cifie la valeur � renvoyer. Pour renvoyer plusieurs valeurs, utiliser une liste.

\pause \footnotesize

```r
maFonction1 <- function(){
  a <- 1:5; b <- 6:10; return(a)
}
maFonction1()
  ## [1] 1 2 3 4 5

maFonction2 <- function(){
  a <- 1:5; b <- 6:10; return(list(a = a, b = b))
}
maFonction2()
  ## $a
  ## [1] 1 2 3 4 5
  ## 
  ## $b
  ## [1]  6  7  8  9 10
```

### \large Effets de bord et programmation fonctionnelle

Par d�faut, les fonctions dans R : 

- ne modifient pas l'environnement d'origine (il n'y a **pas d'effets de bord**);
- peuvent �tre utilis�es en lieu et place des valeurs qu'elles retournent.

```r
monCalcul <-  function(a, b) 10 * a + b
monCalcul(2, 3) + 5
  ## [1] 28
```

\pause Ces �l�ments font de R un **langage particuli�rement adapt� � la programmation fonctionnelle**. 


### Quelques principes de la programmation fonctionnelle

\vfill

1. **Ne jamais cr�er d'effets de bord** Toute modification apport�e � l'environnement par une fonction passe par sa valeur de sortie. 

\vfill

2. \pause \textbf{Vectoriser \textit{i.e.} appliquer des fonctions syst�matiquement � un ensemble d'�l�ments} Fonctions `*apply()`, `Reduce()`, `do.call()`. 

\vfill

3. \pause \textbf{Structurer les traitements � l'aide de fonctions courtes et explicites} Faciliter la relecture, la maintenance et la modularisation. 

\vfill

\pause \textbf{Pour en savoir plus} [\underline{Wikipedia}](https://en.wikipedia.org/wiki/FP_(programming_language)), [\underline{maryrosecook.com}](https://maryrosecook.com/blog/post/a-practical-introduction-to-functional-programming).

\vfill

## Vectoriser : `*apply()`, `Reduce()` et `do.call()`

### \large Appliquer sur chaque ind�pendamment : `apply()`

La fonction `apply(X, MARGIN, FUN)` applique la fonction `FUN` � la matrice `X` selon la dimension `MARGIN`.

\pause \footnotesize

```r
# D�finition et affichage de la matrice m
m <- matrix(1:6, ncol = 3)
m
  ##      [,1] [,2] [,3]
  ## [1,]    1    3    5
  ## [2,]    2    4    6

# Application de la fonction sum() selon les lignes
apply(m, 1, sum)
  ## [1]  9 12

# Application de la fonction sum() selon les colonnes
apply(m, 2, sum)
  ## [1]  3  7 11
```


### \large Appliquer sur chaque ind�pendamment : `lapply()`

\small
La fonction `lapply(X, FUN)` applique la fonction `FUN` � l'objet `X` (vecteur ou liste).

\pause \footnotesize

```r
l <- list(1:5, c(6:9, NA))
l
  ## [[1]]
  ## [1] 1 2 3 4 5
  ## 
  ## [[2]]
  ## [1]  6  7  8  9 NA
lapply(l, sum)
  ## [[1]]
  ## [1] 15
  ## 
  ## [[2]]
  ## [1] NA
```

\pause \small \vspace{-0.2cm}

**Exemple d'utilisation** Appliquer une fonction � toutes les variables d'une table.

### \large Appliquer sur chaque ind�pendamment : `sapply()`

La fonction `sapply()` est analogue � la fonction `lapply()`, mais simplifie le r�sultat produit quand c'est possible.


```r
sapply(l, sum)
  ## [1] 15 NA
```

\pause Les arguments optionnels de la fonction utilis�e peuvent �tre ajout�s � la suite dans toutes les fonctions `*apply()`. 


```r
sapply(l, sum, na.rm = TRUE)
  ## [1] 15 30
```

\pause \textbf{Exemple d'utilisation} Calcul de statistiques sur toutes les variables d'une table.

### \large D�finir une fonction � la vol�e dans `*apply()`

Il est fr�quent que l'op�ration que l'on souhaite appliquer ne corresponde pas exactement � une fonction pr�-existante. 

\pause Dans ce cas, on peut d�finir une **fonction � la vol�e** dans la fonction `*apply()`. 

\footnotesize

```r
# On souhaite s�lectionner le second �l�ment de 
# de chaque vecteur de la liste l
l
  ## [[1]]
  ## [1] 1 2 3 4 5
  ## 
  ## [[2]]
  ## [1]  6  7  8  9 NA

# On d�finit une fonction dans sapply()
sapply(l, function(x) x[2])
  ## [1] 2 7
```

### \large Appliquer sur chaque ind�pendamment : `tapply()`

La fonction `tapply(X, INDEX, FUN)` applique la fonction `FUN`, � l'objet `X` ventil� selon les modalit�s de `INDEX`. 

\pause 

```r
# Variables d'�ge et de sexe
age <- c(45, 50, 35, 20)
sexe <- c("H", "F", "F", "H")

# �ge moyen par sexe
tapply(age, sexe, mean)
  ##    F    H 
  ## 42.5 32.5
```

\normalsize \pause

**Exemple d'utilisation** Calcul de statistiques agr�g�es par cat�gories.

### \large Appliquer sur tous : `do.call()`

La fonction `do.call(what, args)` permet d'appliquer la fonction `what()` � un **ensemble** d'arguments `args` sp�cifi� comme une liste (alors que les fonctions `*apply()` appliqueraient `what()` � **chaque** �l�ment de `args`).

\pause \small

```r
# Concat�nation des vecteurs de l
do.call(base::c, l)
  ##  [1]  1  2  3  4  5  6  7  8  9 NA

# Equivalent � 
c(l[[1]], l[[2]])
  ##  [1]  1  2  3  4  5  6  7  8  9 NA
```

\pause \normalsize

**Exemple d'utilisation** Concat�ner de nombreuses tables avec `rbind()` ou `cbind()`.

### \large Appliquer sur tous successivement : `Reduce()`

La fonction `Reduce(f, x)` permet d'appliquer la fonction `f()` **successivement** � l'ensemble des �l�ments  de `x` (alors que `do.call()` appliquerait `f` **simultan�ment**).

\pause \small

```r
# Application successive de la division au vecteur 1:4
Reduce(`/`, 1:4)
  ## [1] 0.04166667

# Equivalent � 
((1/2)/3)/4
  ## [1] 0.04166667
```

\pause \normalsize

**Exemple d'utilisation** Fusionner de nombreuses tables avec `merge()` (sur les m�mes identifiants).


## Coder efficacement en base R

### L'id�e : En faire faire le moins possible � R

R est un langage dit \og de haut niveau \fg{} : les objets qui le composent sont relativement faciles d'utilisation, au prix de performances limit�es. 

\vfill

� l'inverse, des langages dits de \og bas niveau \fg{} (par exemple C++) sont plus difficiles � utiliser mais aussi plus efficaces. 

\vfill

\pause La plupart des fonctions fondamentales de R font appel � des fonctions compil�es � partir d'un langage de plus bas niveau. 

\vfill

D'o� le principe : **limiter au maximum la surcharge li�e � R** pour retomber au plus vite sur des fonctions pr�-compil�es.

\pause \vfill

**Remarque** Il est tr�s facile en pratique d'utiliser R comme une interface vers des langages de plus bas niveau, *cf. infra* � propos de `Rcpp`. 




### Utiliser les boucles avec parcimonie (1)

Comme la plupart des langages de programmation, R dispose de **structures de contr�les** permettant de r�aliser des boucles. 

\footnotesize

```r
boucle <- function(x){
  cumul <- rep(NA, length(x))
  for(i in seq_along(x)) 
    cumul[i] <- if(i == 1) x[i] else cumul[i - 1] + x[i]
  return(cumul)
}
boucle(1:5)
  ## [1]  1  3  6 10 15
```

\pause \normalsize
Ces op�rations pr�sentent plusieurs inconv�nients : 

1. Elles sont longues � �crire et assez peu claires;
2. Elles reposent sur des effets de bord;
3. Elles sont en g�n�ral tr�s peu **efficaces algorithmiquement**.

### Utiliser les boucles avec parcimonie (2)

\small
Les m�thodes de vectorisation sont en g�n�ral beaucoup plus efficaces que les boucles en R : 

- vectorisation de haut niveau (*cf.* *supra*);
- vectorisation de bas niveau : la vectorisation est op�r�e par le langage de bas niveau auquel fait appel R. 

\pause \footnotesize

```r
microbenchmark(times = 10L
  , boucle = boucle(1:10000)
  , Reduce = Reduce(`+`, 1:10000, accumulate = TRUE)
  , cumsum = cumsum(1:10000)
)
  ## Unit: microseconds
  ##    expr       min        lq       mean    median
  ##  boucle 16152.618 16462.201 19031.2555 17284.143
  ##  Reduce  5595.064  5964.842  6441.1111  6234.577
  ##  cumsum    35.750    40.257    61.8559    44.762
  ##         uq       max neval
  ##  18458.342 34343.917    10
  ##   6505.539  8956.778    10
  ##     54.097   186.937    10
```

### Utiliser l'op�rateur `[` au lieu de `ifelse()`

\small
Lorsqu'on cr�e une variable en faisant intervenir une condition, il est fr�quent d'utiliser la fonction `ifelse()` : 

\footnotesize

```r
notes <- runif(n = 100000, min = 0, max = 20)
mavar <- ifelse(notes >= 10, "Re�u", "Recal�")
```

\pause \small
Il est n�anmoins beaucoup plus efficace d'utiliser l'op�rateur `[`. 

\footnotesize

```r
microbenchmark(times = 10L
  , ifelse = ifelse(notes >= 10, "Re�u", "Recal�")
  , "[" = {
    mavar <- rep("Recal�", length(notes))
    mavar[notes >= 10] <- "Re�u"
  } 
)
  ## Unit: milliseconds
  ##    expr       min        lq      mean    median
  ##  ifelse 24.766078 24.992902 25.549918 25.163601
  ##       [  1.363973  1.386601  1.411959  1.407191
  ##         uq       max neval
  ##  25.833693 27.527202    10
  ##   1.442876  1.480608    10
```

### Simplifier les donn�es :  le type `factor`

On utilise souvent des cha�nes de caract�re pour coder une variable de nature cat�gorielle.

Le type `factor` permet de remplacer chaque valeur distincte par un entier en sauvegardant la table de correspondance. Il est **beaucoup plus l�ger**.

\pause \footnotesize


```r
# Variable � trois modalit�s cod�es en caract�res
acteu <- as.character(sample(1:3, 120000, replace = TRUE))
object_size(acteu)
  ## 960 kB

# Conversion en facteur
f.acteu <- as.factor(acteu)
str(f.acteu)
  ##  Factor w/ 3 levels "1","2","3": 1 3 2 2 2 2 3 1 1 1 ...
object_size(f.acteu)
  ## 481 kB
```

### Utiliser les noms � bon escient (1)

La plupart des objets manipul�s couramment dans R peuvent �tre **nomm�s** : vecteurs, matrices, listes, `data.frame`. 

Utiliser des noms est une m�thode souvent **tr�s rapide** pour **acc�der aux �l�ments** qui composent ces objets.

\ 

\pause 

**Exemple** On cherche � extraire les observations d'une table *via* leur identifiant `id`. On compare l'utilisation des noms � une fusion r�alis�e avec `merge()`.

\small 


```r
# Cr�ation de la table df
id <- as.character(sample(1e5))
sexe <- sample(1:2, 1e5, replace = TRUE)
df <- data.frame(id, sexe)
```

### Utiliser les noms � bon escient (2)

\footnotesize


```r
# Affectation de noms � df 
row.names(df) <- id

# Liste des identifiants � extraire
extract <- c("234", "12", "7890")

# Comparaison
microbenchmark(times = 10L
  , merge = merge(data.frame(id = extract), df, sort = FALSE)
  , names = df[extract, ]
)
  ## Unit: milliseconds
  ##   expr       min        lq      mean    median
  ##  merge 13.868964 14.261877 14.975551 14.682713
  ##  names  2.449722  2.483716  2.711015  2.659243
  ##         uq       max neval
  ##  15.148270 18.012145    10
  ##   2.741494  3.314512    10
```


### � propos des matrices (1)

Quand c'est possible, **travailler sur des matrices** (plut�t que des `data.frame`) est souvent source d'efficacit� : 

\vfill

- \pause de nombreuses op�rations sont **vectoris�es** pour les matrices : sommes en lignes et en colonnes (`rowSums()` et `colSums()`), etc. ;

\vfill 

- \pause l'**alg�bre matricielle** (le produit matriciel notamment) est tr�s bien optimis�e ;

\vfill

- \pause selon la nature du probl�me, l'utilisation de **matrices lacunaires** (*sparse*) peut faire gagner et en empreinte m�moire et en temps de calcul (*cf.* le *package* `Matrix`).

### � propos des matrices (2)

\footnotesize 


```r
# Cr�ation d'une matrice m avec 99 % de 0
v <- rep(0, 1e6); v[sample(1e6, 1e4)] <- rnorm(1e4)
m <- matrix(v, ncol = 100)

# Transformation en matrice lacunaire
library(Matrix)
M <- Matrix(m)

# Gain en espace (en ko)
c(object_size(m), object_size(M))
  ## [1] 8000200  121800

# Gain de performances pour la fonction colSums()
microbenchmark(dense = colSums(m), sparse = colSums(M))
  ## Unit: microseconds
  ##    expr      min        lq       mean    median
  ##   dense 1258.396 1279.8925 1402.13968 1319.8680
  ##  sparse   61.805   75.0895   90.45723   86.9045
  ##        uq      max neval
  ##  1368.829 4009.479   100
  ##    95.571  170.348   100
```

## dplyr : une grammaire du traitement des donn�es

### Philosophie de `dplyr`

`dplyr` est un *package* d�velopp� par RStudio et en particulier par Hadley Wickham. Il constitue un v�ritable **�cosyst�me** visant � faciliter le travail sur des tables statistiques :

- \pause il fournit un ensemble de **fonctions �l�mentaires** (les \og verbes \fg{}) pour effectuer les manipulations de donn�es;
- \pause plusieurs verbes peuvent facilement �tre **combin�s en utilisant l'op�rateur `%>%`** (*pipe*);
- \pause toutes les op�rations sont optimis�es par du **code de bas niveau**. 


```r
library(dplyr)
```

\pause

**Pour en savoir plus** De nombreuses vignettes tr�s p�dagogiques sont disponibles sur la [\underline{page du \textit{package}}](https://cran.r-project.org/package=dplyr). Un [\underline{aide-m�moire}](https://www.rstudio.com/wp-content/uploads/2016/01/data-wrangling-french.pdf) est �galement disponible sur le site de RStudio.

### \large Donn�es d'exemple : table `flights` de `nycflights13`

Les exemples relatifs aux *packages* `dplyr` et `data.table` s'appuient sur les donn�es du *package* `nycflights13`.


```r
library(nycflights13)
```

\pause Ce *package* contient des donn�es sur tous les vols au d�part de la ville de New-York en 2013. 

\small


```r
data(package = "nycflights13")
dim(flights)
  ## [1] 336776     19
names(flights)[1:9]
  ## [1] "year"           "month"          "day"           
  ## [4] "dep_time"       "sched_dep_time" "dep_delay"     
  ## [7] "arr_time"       "sched_arr_time" "arr_delay"
```

### Simplifier des op�rations de base R

`dplyr` propose plusieurs verbes pour simplifier certaines op�rations parfois fastidieuses en base R : 

\pause \vspace{-1mm}
- `filter()` s�lectionne des observations selon une ou plusieurs conditions;

\vspace{-3mm}

```r
filter(flights, month == 7, day == 4)
```

\pause \vspace{-3mm}
- `arrange()` trie le fichier selon une ou plusieurs variables;

\vspace{-3mm}

```r
arrange(flights, month, desc(distance))
```

\pause \vspace{-3mm}
- `select()` s�lectionne des variables par leur noms;

\vspace{-3mm}

```r
select(flights, year:arr_delay)
```

\pause \vspace{-3mm}
- `rename()` renomme des variables.

\vspace{-3mm}

```r
rename(flights, annee = year)
```

### Calculer des statistiques avec `summarise()`

La fonction `summarise()` permet de facilement calculer des statistiques sur des donn�es. 

\pause 

```r
summarise(flights
  , distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
)
```


```
  ##   distance_moyenne retard_max
  ## 1         1039.913       1272
```

\pause 

**Remarque** Comme toutes les fonctions de `dplyr`, `summarise()` prend un `data.frame` en entr�e et produit un `data.frame` en sortie. 


### Ventiler des traitements avec `group_by()`

Appliqu� au pr�alable � un `data.frame`, `group_by()` ventile tous les traitements ult�rieurs selon les modalit�s d'une ou plusieurs variables.


```r
flights_bymonth <- group_by(flights, month)
summarise(flights_bymonth
  , distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
)[1:3, ]
```


```
  ##   month distance_moyenne retard_max
  ## 1     1         1006.844       1272
  ## 2     2         1000.982        834
  ## 3     3         1011.987        915
```


### Encha�ner des op�rations avec `%>%`

L'utilisation des verbes de `dplyr` ne prend tout son int�r�t que quand ils sont encha�n�s en utilisant l'op�rateur *pipe* `%>%`. 

`maTable %>% maFonction(param1, param2)` est �quivalent � `maFonction(maTable, param1, param2)`. 

\pause Ainsi, l'**encha�nement de nombreuses op�rations** devient beaucoup plus facile � mettre en \oe uvre et � comprendre. 

\pause \footnotesize


```r
flights %>%
  group_by(year, month, day) %>%
  summarise(
    arr = mean(arr_delay, na.rm = TRUE),
    dep = mean(dep_delay, na.rm = TRUE)
  ) %>%
  filter(arr > 30 | dep > 30)
```


### Fusionner des tables avec `*_join()`

`dplyr` dispose de nombreuses fonctions tr�s utiles pour fusionner une ou plusieurs tables ensemble, qui **s'inspirent tr�s fortement de SQL** : 

- `a %>% left_join(b, by = "id")` : fusionne `a` et `b` en conservant toutes les observations de `a`;
- `a %>% right_join(b, by = "id")` : fusionne `a` et `b` en conservant toutes les observations de `b`;
- `a %>% inner_join(b, by = "id")` : fusionne `a` et `b` en ne conservant que les observations dans `a` et `b`;
- `a %>% full_join(b, by = "id")` : fusionne `a` et `b` en conservant toutes les observations.

**Pour en savoir plus** Une [\underline{vignette}](https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html) est consacr�e � la pr�sentation des fonctions de `dplyr` portant sur deux tables.

### Comparaison de base R et de `dplyr`

`dplyr` est particuli�rement int�ressant pour travailler sur des donn�es par groupe. On compare donc l'utilisation de `tapply()` de base R avec `group_by()` de `dplyr`.

\footnotesize


```r
df <- data.frame(
  x = rnorm(1e6)
  , by = sample(1e3, 1e6, replace = TRUE)
)

microbenchmark(times = 10L
  , base = tapply(df$x, df$by, sum)
  , dplyr = df %>% group_by(by) %>% summarise(sum(x))
)
  ## Unit: milliseconds
  ##   expr      min       lq     mean   median       uq
  ##   base 37.64261 38.03618 41.82012 41.88673 45.41735
  ##  dplyr 46.90118 47.41262 47.82028 47.92937 48.27681
  ##       max neval
  ##  46.70003    10
  ##  48.47417    10
```

<!-- ## Une petite parenth�se {.unnumbered} -->

<!-- ### Utliser SQL dans R avec `sqldf` -->

<!-- \small -->

<!-- Le *package* `sqldf` permet d'utiliser des instructions SQL pour manipuler des `data.frame` de R.  -->

<!-- ```{r, include = FALSE} -->
<!-- library(sqldf) -->
<!-- sqldf("select avg(distance) as distance_moyenne from flights") -->
<!-- ``` -->

<!-- \footnotesize -->

<!-- \vspace{-2mm} -->

<!-- ```{r} -->
<!-- library(sqldf) -->
<!-- sqldf("select avg(distance) as distance_moyenne from 'flights'") -->
<!-- ``` -->

<!-- \small -->

<!-- \vspace{-3mm} -->

<!-- Ce *package* permet ainsi de b�n�ficier de toute la souplesse de SQL dans R, notamment pour les fusions de tables.  -->

<!-- Ses performances sont cependant en g�n�ral **en retrait** par rapport aux solutions alternatives. -->

<!-- \footnotesize -->

<!-- \vspace{-2mm} -->

<!-- ```{r} -->
<!-- microbenchmark(times = 1L -->
<!--   , sqldf = sqldf("select sum(x) from df group by by") -->
<!-- ) -->
<!-- ``` -->

## data.table : un data.frame optimis�

### Philosophie de `data.table`

Contrairement � `dplyr`, `data.table` ne cherche pas � se substituer � base R mais � le compl�ter. 

Il introduit un nouveau type d'objet, le `data.table`, qui **h�rite** du `data.frame` (tout `data.table` est un `data.frame`).

Appliqu� � un `data.table`, l'op�rateur `[` est **enrichi et optimis�**.


```r
library(data.table)
flights_DT <- data.table(flights)
```

**Pour en savoir plus** L� encore des vignettes tr�s p�dagogiques sont disponibles sur la [\underline{page du \textit{package}}](https://cran.r-project.org/package=data.table).

### L'op�rateur `[` du `data.table` : `i`, `j` et `by`

La syntaxe de l'op�rateur `[` appliqu� � un `data.table` est la suivante (`DT` repr�sente le `data.table`): 

\centering \large

`DT[i, j, by]`

\raggedright \normalsize

- `i` : s�lectionner des observations selon une condition;
- `j` : s�lectionner ou **cr�er** une ou plusieurs variables;
- `by` : ventiler les traitements selon les modalit�s d'une ou plusieurs variables.

\bigskip 

**Exemple** Retard quotidien maximal au mois de janvier.

\small


```r
flights_DT[
  month == 1, max(arr_delay, na.rm = TRUE), by = day
]
```
### S�lectionner des observations avec `i`

\small
Il est beaucoup plus simple et efficace de s�lectionner des observations dans un `data.table` que dans un `data.frame`:

- il n'y a pas � r�p�ter le nom du `data.frame` dans `[`;

- il est possible d'indexer un `data.table` par une ou plusieurs \og cl�s \fg{} permettant une recherche souvent plus rapide.

\footnotesize


```r
setkey(flights_DT, origin)
microbenchmark(times = 100L
  , base = flights[flights$origin == "JFK",]
  , dt1 = flights_DT[origin == "JFK"]
  , dt2 = flights_DT[list("JFK")]
)
  ## Unit: milliseconds
  ##  expr      min       lq     mean   median       uq
  ##  base 39.93500 41.02064 47.52981 47.84936 48.94594
  ##   dt1 11.18588 11.38343 15.11531 11.62197 14.05389
  ##   dt2 10.61155 10.92853 11.95295 11.03300 11.53576
  ##        max neval
  ##  204.32653   100
  ##  183.28408   100
  ##   21.06783   100
```

<!-- summary(microbenchmark(times = 10L -->
<!--   , base = flights[flights$origin == "JFK",] -->
<!--   , dt1 = flights_DT[origin == "JFK"] -->
<!--   , dt2 = flights_DT[list("JFK")] -->
<!-- ))[, c("expr", "lq", "mean", "uq")] -->


### Calculer des statistiques avec `j`

L'argument `j` permet de calculer des statistiques agr�g�es. 

\small


```r
flights_DT[, j = list(
  distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
)]
  ##    distance_moyenne retard_max
  ## 1:         1039.913       1272
```

\normalsize 

Utilis� avec `:=` il permet de les refusionner automatiquement avec les donn�es d'origine. 

\small


```r
flights_DT <- flights_DT[, j := list(
  distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
)]
```

### Ventiler des traitements avec `by` et `keyby`

L'argument `by` de `[` ventile tous les traitements renseign�s dans `j` selon les modalit�s d'une ou plusieurs variables.


```r
flights_DT[, j = list(
  distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
), by = month][1:3,]
  ##    month distance_moyenne retard_max
  ## 1:     1         1006.844       1272
  ## 2:    10         1038.876        688
  ## 3:    11         1050.305        796
```

**Remarque** Par d�faut, `by` ordonne les r�sultats dans l'ordre des groupes dans le `data.table`. `keyby` trie les donn�es selon la variable d'agr�gation (comme `group_by` de `dplyr`).

### Cha�ner les op�rations dans un `data.table`

Il est tr�s facile de cha�ner les op�rations sur un `data.table` en encha�nant les `[`. 


```r
flights_DT[
  , j = list(
    arr = mean(arr_delay, na.rm = TRUE)
    , dep = mean(dep_delay, na.rm = TRUE)
  )
  , keyby = list(year, month, day)
][arr > 30 | dep > 30]
```

**Remarque** Ces cha�nages sont possibles avec  un `data.table` mais pas avec un `data.frame`. 

  
### Comparaison de base R, `dplyr` et `data.table`

\footnotesize


```r
# Conversion de la table de test en data.table
dt <- data.table(df)

microbenchmark(times = 10L
  , base = tapply(df$x, df$by, sum)
  , dplyr = df %>% group_by(by) %>% summarise(sum(x))
  , data.table = dt[, sum(x), keyby = by]
)
```

\vspace{-5mm}


```
  ##         expr       lq     mean       uq
  ## 1       base 37.98608 43.61748 45.62521
  ## 2      dplyr 46.59135 47.12917 47.49720
  ## 3 data.table 21.66920 23.70292 23.84025
```

\normalsize

**Pour en savoir plus** Cette discussion sur [\underline{stackoverflow.com}](http://stackoverflow.com/questions/21435339/data-table-vs-dplyr-can-one-do-something-well-the-other-cant-or-does-poorly) (notamment entre les auteurs des *packages*) aborde les avantages et les inconv�nients de `dplyr` et `data.table`. 



## Aller plus loin avec R

### Les limites du logiciel

Les outils pr�sent�s jusqu'� pr�sent correspondent � une utilisation \og classique \fg{} de R : production d'une enqu�te, redressements, �tudes.

\ 

Il arrive n�anmoins que certains traitements soient rendus **difficiles par les caract�ristiques du logiciel** :

- travail sur des volumes de donn�es impossibles � loger en m�moire;
- temps de calcul trop longs et impossibles � r�duire.

\ 

Dans ce genre de situations, la solution consiste en g�n�ral � utiliser R comme une **interface** vers des techniques ou langages susceptibles de r�pondre au probl�me pos�. 


### \large Travailler sur des donn�es *out-of-memory*

Les *packages* `ff` et `ffbase` permettent de travailler sur des objets directement stock�s sur le disque dur de l'ordinateur.

\footnotesize

```r
library(ff)
library(ffbase)

# Lecture d'un fichier .csv important (RP)
ffdf <- read.csv2.ffdf(
  file = "FD_INDREGZA_2013.txt"
  , VERBOSE = TRUE
)

# Calculs simples sur l'objet ffdf
table(ffdf$REGION)
```

\normalsize

**Remarque** Ces *packages* n'ont pas connu d'�volutions depuis plusieurs ann�es.

### \large Se connecter � des bases de donn�es 

Une autre solution pour exploiter de grands volumes de donn�es dans R est de l'utiliser pour **interroger des bases de donn�es**, *via* par exemple le *package* `RPostgreSQL`. 

\footnotesize

```r
library(RPostgreSQL)

# Connexion � la base de donn�es maBdd
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname = "maBdd"
  , host = "localhost", port = 5432
  , user = "utilisateur", password = "motDePasse"
)

# Requ�te SQL sur la table maTable
dbGetQuery(con, "SELECT COUNT(*) FROM maTable")
```

\normalsize

**Remarque** Diff�rents *packages* permettent de se connecter � diff�rents types de base de donn�es : `RMySQl` pour MySQL, etc.

### \large Se connecter � des bases de donn�es avec `dplyr`

`dplyr` a la particularit� de pouvoir fonctionner de fa�on totalement transparente sur des bases de donn�es de diff�rents types. 

\footnotesize

```r
library(dplyr)

# Connexion � la base de donn�es maBdd
con <- src_postgres(
  dbname = "maBdd", host = "localhost", port = 5432
  , user = "utilisateur", password = "motDePasse"
)

# Requ�te SQL sur la table maTable...
tbl(con, "SELECT COUNT(*) FROM maTable")

# ... ou utilisation des verbes de dplyr
tbl(con) %>% summarise(n())
```



<!-- R est un langage de haut niveau : sa simplicit� d'utilisation se paie par un co�t en termes de performances ou de m�moire.  -->

<!-- Il arrive ainsi que les contraintes physiques (m�moire install�e ou temps disponible) interdisent de r�aliser certaines op�rations avec base R ou d'autres *packages*.  -->

<!-- **Exemples** Traitement de volumes de donn�es cons�quents quand la m�moire est insuffisante, algorithme s�quentiel complexe. -->

<!-- Pour faire face � ce genre de situations, R propose des interfaces vers d'autres langages ou d'autres syst�mes de traitements de donn�es.  -->

### \large Parall�liser des traitements avec `parallel` (1)

La plupart des ordinateurs poss�dent aujourd'hui plusieurs c\oe urs (*core*) susceptibles de mener des traitements **en parall�le** (8 sur chaque serveur d'AUS par exemple). 

Par d�faut, R n'expoite qu'un seul c\oe ur : le *package* `parallel` (mais aussi les *packages* `snow` ou `foreach` par exemple) permettent de **parall�liser des structures du type `*apply`**.

Ce type d'op�rations est compos� de plusieurs �tapes : 

1. Cr�ation et param�trage du \og \textit{cluster} \fg{} de c\oe urs � utiliser (chargement des fonctions et *packages* n�cessaires sur chaque c\oe ur);
2. Lancement du traitement parall�lis� avec `parLapply()`;
3. Arr�t des processus du *cluster* avec `stopCluster()`.

### \large Parall�liser des traitements avec `parallel` (2)

Dans cet exemple, on cherche � appliquer la fonction `f` � chaque matrice de la liste `l`. 

\footnotesize

```r
library(MASS)
f <- function(x) rowSums(ginv(x))
l <- lapply(1:100, function(x) matrix(runif(1e4), ncol = 1e2))

# Cr�ation et param�trage du cluster
library(parallel)
cl <- makeCluster(4)
clusterEvalQ(cl, library(MASS))
clusterExport(cl, "f")

# Lancement du calcul parall�lis�
parLapply(cl, l, f)

# Arr�t des processus du cluster
stopCluster(cl)
```

### \large Parall�liser des traitements avec `parallel` (3)




```r
microbenchmark(times = 10
  , lapply(l, f)
  , parLapply(cl, l, f)
)
  ## Unit: milliseconds
  ##                 expr      min       lq     mean
  ##         lapply(l, f) 653.5663 667.8096 678.4173
  ##  parLapply(cl, l, f) 347.7800 351.0758 411.1644
  ##    median       uq      max neval
  ##  672.4361 693.3183 710.1756    10
  ##  392.6949 454.0194 550.1971    10
```



### `Rcpp` : un package R pour utiliser C++ (1)

Le *package* `Rcpp` permet d'int�grer facilement des fonctions cod�es en C++ dans un programme R. 

\footnotesize


```r
library(Rcpp)
cppFunction('int add(int x, int y) {
  int result = x + y;
  return result;
}')

add(1, 2)
  ## [1] 3
```

\normalsize

**Remarque** Il est �galement possible de soumettre un fichier contenant des fonctions C++ �crit par ailleurs � l'aide de la fonction `sourceCpp()`. 

**Pour en savoir plus** [\underline{\textit{Advanced R}}](http://adv-r.had.co.nz/Rcpp.html)

### `Rcpp` : un package R pour utiliser C++ (2)

Contrairement � R, C++ est un langage de bas niveau : les boucles y sont en particulier extr�mement rapides. 

**Exemple** Somme cumul�e par colonne 

\footnotesize


```r
# Fonction C++
cppFunction('NumericMatrix cumColSumsC(NumericMatrix x) {
  int nrow = x.nrow(), ncol = x.ncol();
  NumericMatrix out(nrow, ncol);
  for (int j = 0; j < ncol; j++) {
    double acc = 0;
    for(int i = 0; i < nrow; i++){
      acc += x(i, j);
      out(i, j) = acc;
    }
  }
  return out;
}')
```

### `Rcpp` : un package R pour utiliser C++ (3)

\footnotesize


```r
# Fonction R
cumColSumsR <- function(x){
  apply(x, 2, cumsum)
}

# Les deux fonctions produisent les m�mes r�sultats...
x <- matrix(rnorm(1e6), ncol = 1e2)
all.equal(cumColSumsR(x), cumColSumsC(x))
  ## [1] TRUE

# ... mais cumColSumsC() est beaucoup plus rapide !
summary(microbenchmark(times = 10
  , cumColSumsR(x)
  , cumColSumsC(x)
))[, c("expr", "lq", "mean", "uq")]
  ##             expr        lq      mean        uq
  ## 1 cumColSumsR(x) 16.420141 19.201384 21.674531
  ## 2 cumColSumsC(x)  4.177008  4.724542  4.279235
```





# R�aliser des graphiques avec R

\subsection*{R�aliser des graphiques avec R}

### R et la r�alisation de graphiques

La r�alisation de graphiques dans un logiciel statistique est une op�ration souvent longue et complexe. 

Dans la plupart des cas, l'ajustement fin des param�tres par le biais de lignes de code rel�ve de la gageure. 

\pause R dispose n�anmoins de plusieurs caract�ristiques qui facilitent la r�alisation de graphiques : 

- **souplesse** : la tr�s grande vari�t� des types d'objets simplifie les param�trages ;
- **rigueur** : la dimension fonctionnelle du langage aide � syst�matiser l'utilisation des param�tres graphiques ;
- **adaptabilit�** : la libert� de d�veloppement de modules compl�mentaires rend possible de profondes innovations dans la conception des graphiques. 

### Base R ou `ggplot2` ? 

Il existe aujourd'hui troix principaux paradigmes pour produire des graphiques avec R : 

- les fonctionnalit�s de base du logiciel du *package* `graphics`;

- les fonctionnalit�s plus �labor�es des *packages* `grid` et `lattice` (non-abord�es dans cette formation);

- la \og grammaire des graphiques \fg{} du *package* `ggplot2`.

\bigskip 

\underline{Plan de la partie}

\bigskip

\tableofcontents[currentsection, sectionstyle = hide, subsectionstyle = show/show/hide]


### Donn�es d'exemple : table `mpg` de `ggplot2`

\small

La plupart des exemples de cette partie sont produits � partir de la table `mpg` du *package* `ggplot2`.

\footnotesize


```r
library(ggplot2)
dim(mpg)
  ## [1] 234  11
names(mpg)
  ##  [1] "manufacturer" "model"        "displ"       
  ##  [4] "year"         "cyl"          "trans"       
  ##  [7] "drv"          "cty"          "hwy"         
  ## [10] "fl"           "class"
```

\pause \vspace{-0.4cm}
\small

- `displ` : cylindr�e;
- `drv` : transmission (`f` traction, `r` propulsion, `4` quatre roues motrices);
- `cty` et `hwy` :  nombre de *miles* parcourus par *gallon* d'essence en ville et sur autoroute respectivement.


## R�aliser des graphiques avec `graphics`

### \large Beaucoup de fonctions, des param�tres communs

La cr�ation de graphiques avec le *package* de base `graphics` s'appuie sur la **fonction `plot()`** ainsi que sur des **fonctions sp�cifiques** : 

- `plot(hist(x))`, `plot(density(x))` : histogrammes et densit�s;
- `plot(ts)` : repr�sentation de s�ries chronologiques;
- `plot(x, y)` : nuages de points;
- `barplot(table(x))` et `pie(table(x))` : diagrammes en b�tons et circulaires.

\pause Si ce n'est quelques **arguments sp�cifiques**, ces fonctions partagent un ensemble de **param�tres graphiques communs**. 

\pause 

**Pour en savoir plus** Le site [\underline{statmethods.net}](http://www.statmethods.net/graphs/) recense et illustre la plupart des fonctions du *package* `graphics`.

### Histogrammes et densit�s

Les fonctions `histogram()` et `density()` calculent les statistiques ensuite utilis�es par la fonction `plot()` pour construire les graphiques. 

\pause Arguments sp�cifiques � `hist()` : 
\vspace{-0.3cm}

- `breaks` : m�thode pour d�terminer les limites des classes;
- `labels = TRUE` : ajoute l'effectif de chaque classe.

\pause Arguments sp�cifiques � `density()` : 
\vspace{-0.3cm}

- `bw` : largeur de la fen�tre utilis�e par la fonction de lissage;
- `kernel` : fonction de lissage utilis�e.

\pause

**Remarque** L'argument `plot` de la fonction `hist()` (`TRUE` par d�faut) affiche automatiquement un graphique, sans avoir � appeler explicitement la fonction `plot()`.

### Histogrammes et densit�s

\centering \footnotesize

```r
hist(mpg$hwy, breaks = seq(10, 44, by = 2), 
     col = "lightblue", labels = TRUE)
```


\includegraphics[height=7cm]{presentation_files/figure-beamer/unnamed-chunk-82-1} 

### Histogrammes et densit�s

\centering \footnotesize

```r
plot(density(mpg$hwy, bw = 0.5, kernel = "gaussian"))
```


\includegraphics[height=7cm]{presentation_files/figure-beamer/unnamed-chunk-83-1} 

### S�ries chronologiques avec `plot(ts)`

\centering \footnotesize


```r
class(AirPassengers)
  ## [1] "ts"
plot(AirPassengers)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-84-1} 

### Nuages de points avec `plot(x, y)`

\centering \footnotesize


```r
plot(mpg$displ, mpg$hwy)
```


\includegraphics[height=6.5cm]{presentation_files/figure-beamer/unnamed-chunk-85-1} 

### Diagrammes en b�tons et circulaires

La fonction `table()` permet de calculer les statistiques utilis�es ensuite par `barplot()` et `pie()` pour construire les graphiques.

\pause Arguments sp�cifiques � `barplot()` : 
\vspace{-3mm}

- `horiz` : construit le graphique horizontalement;
- `names.arg` : nom � afficher pr�s des barres.

\pause Arguments sp�cifiques � `pie()` : 
\vspace{-3mm}

- `labels` : noms � afficher � c�t� des portions de disque; 
- `clockwise` : sens dans lequel sont repr�sent�es les modalit�s;
- `init.angle` : point de d�part en degr�s.

\pause

**Remarque** Quand `barplot()` est appliqu� � un tri crois�, la couleur des barres varie et les param�tres deviennent utiles : 
\vspace{-3mm}

- `beside` : position des barres;
- `legend.text` : ajoute une l�gende avec le texte indiqu�.


### Diagrammes en b�tons et circulaires

\centering \footnotesize


```r
uni <- table(mpg$drv)
lab <- c("4 roues", "Traction", "Propulsion")
barplot(uni, names.arg = lab)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-86-1} 

### Diagrammes en b�tons et circulaires

\centering \footnotesize


```r
pie(uni, labels = paste0(lab, "\n", uni)
    , init.angle = 90, clockwise = TRUE)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-87-1} 

### Diagrammes en b�tons et circulaires

\centering \footnotesize


```r
bi <- table(mpg$drv, mpg$year)
barplot(bi, horiz = TRUE, beside = TRUE, legend.text = lab)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-88-1} 

### Couleur, forme et taille des objets

Plusieurs param�tres permettent de modifier la couleur, la forme ou la taille des �l�ments qui composent un graphique: 

- \pause `pch` : entier ou caract�re sp�cial indiquant la forme des points � repr�senter. 

![](presentation_files/figure-beamer/unnamed-chunk-89-1.pdf)<!-- --> 

- \pause `col` : valeur indiquant la couleur du contour des formes utilis�es. Peut �tre un entier (recycl� au-del� de 8), un nom ou un code RGB hexad�cimal (du type `"#FF1111"`).
\small  

![](presentation_files/figure-beamer/unnamed-chunk-90-1.pdf)<!-- --> 

Pour certaines formes (`pch` entre 21 et 25), il est �galement possible de modifier la couleur de remplissage avec `bg`. 

### Couleur, forme et taille des objets

**Remarque** : la palette de couleurs accessibles en utilisant des entiers est r�duite. Il est possible de l'�tendre consid�rablement *via* la fonction `colors()`. 

\small

```r
colors()[1:3]
  ## [1] "white"        "aliceblue"    "antiquewhite"
length(colors())
  ## [1] 657
grep("blue", colors(), value = TRUE)[1:3]
  ## [1] "aliceblue" "blue"      "blue1"
```

\pause \normalsize
- `cex` : utilis� dans une fonction `plot()`, `cex` permet d'ajuster la taille des points qui le composent. 

![](presentation_files/figure-beamer/unnamed-chunk-92-1.pdf)<!-- --> 

### Couleur, forme et taille des objets

La fonction `legend()` permet d'ajouter une l�gende. 
\footnotesize \center

\pause \vspace{-0.4cm}

```r
t <- factor(mpg$drv
  , labels = c("4 roues", "Traction", "Propulsion"))
plot(mpg$displ, mpg$hwy, pch = 21, col = t, bg = t)
legend("topright", legend = unique(t), pch = 21
  , col = unique(t), pt.bg = unique(t))
```

![](presentation_files/figure-beamer/unnamed-chunk-93-1.pdf)<!-- --> 

### Titres, texte et axes

Les titres sont param�tr�s � l'aide des fonctions suivantes : 

\vspace{-0.3cm}
- `main` pour ajouter le titre principal;
- `xlab` et `ylab` pour ajouter des titres aux axes.

\pause La fonction `text()` permet d'ajouter du texte sur le graphique en le positionnant par ses coordonn�es, �ventuellement avec un d�calage (pour nommer des points par exemple). 

\pause Il est �galement possible de param�trer les axes :

\vspace{-0.3cm}
- `xlim` et `ylim` sp�cifient les valeurs minimales et maximales de chaque axe;
- `axis()` est une fonction qui permet d'ajouter un axe personnalis�. 

\pause 

**Remarque** Pour produire un graphique sans axe et les rajouter apr�s, utiliser l'option `axes = FALSE` de la fonction `plot()`. 

### Combinaison de plusieurs graphiques

Par d�faut l'utilisation de la fonction `plot()` produit un nouveau graphique. 

\pause Pour superposer diff�rents graphiques, le plus simple est de commencer par une instruction `plot()` puis de la compl�ter : 

- avec `points()` pour ajouter des points;
- avec `lines()` pour ajouter des lignes;
- avec `abline()` pour ajouter des lignes d'apr�s une �quation;
- avec `curve()` pour ajouter des courbes d'apr�s une �quation. 

\pause 

**Exemple** Ajout d'une droite de r�gression au graphique de `hwy` par `displ`. 

### Combinaison de plusieurs graphiques

\footnotesize


```r
reg <- lm(hwy ~ displ, data = mpg)
plot(mpg$displ, mpg$hwy)
abline(a = reg$coefficients[1], b = reg$coefficients[2])
```

![](presentation_files/figure-beamer/unnamed-chunk-94-1.pdf)<!-- --> 


### Param�tres g�n�raux et disposition (1)

Utilis�e en dehors de la fonction `plot()`, la fonction `par()` permet de d�finir l'ensemble des param�tres graphiques globaux. 

\pause Ses mots-cl�s les plus importants sont : 

- `mfrow` : permet de disposer plusieurs graphiques c�te-�-c�te. 
    
    ```r
    par(mfrow = c(1, 2)) # 1 ligne et 2 colonnes
    par(mfrow = c(3, 2)) # 3 lignes et 2 colonnes
    par(mfrow = c(1, 1)) # 1 ligne et 1 colonne
    ```
- `cex` :  coefficient multiplicatif pour modifier la taille de l'ensemble des textes et symboles utilis�s dans les graphiques (1 par d�faut). 

\pause 

**Pour en savoir plus** La [page d'aide](http://stat.ethz.ch/R-manual/R-devel/library/graphics/html/par.html) de la fonction `par()` d�taille toutes ces options. 


### Param�tres g�n�raux et disposition (2)


```r
par(mfrow = c(1, 2))
plot(mpg$displ, mpg$hwy)
plot(AirPassengers)
```

![](presentation_files/figure-beamer/unnamed-chunk-96-1.pdf)<!-- --> 



### Exportation

Pour exporter des graphiques depuis R, la d�marche consiste � rediriger le flux de production du graphiques vers un fichier � l'aide d'une fonction du *package* `grDevices`. Par exemple : 

\pause 

```r
png("monGraphique.png", width = 10, height = 8
    , unit = "cm", res = 600)
plot(mpg$displ, mpg$hwy)
dev.off()
```

\pause Dans ce contexte, les fonctions les plus utiles sont : `png()`, `jpeg()` et `pdf()`. En particulier, `pdf()` permet de conserver le caract�re vectoriel des graphiques dans R. 

\pause 

**Remarque** Les graphiques peuvent �galement facilement �tre export�s depuis RStudio en utilisant les menus sp�cialement con�us � cet effet. 

## R�aliser des graphiques avec \protect\texttt{ggplot2}

### \large L'impl�mentation d'une grammaire des graphiques

Le *package* `graphics` permet de r�aliser une grande quantit� de graphiques mais pr�sente deux limites importantes : 

- les fonctions qui le composent forment une casuistique complexe;
- il n'est pas possible d'inventer de nouvelles repr�sentations � partir des fonctions existantes.

\pause Ce sont ces limites que tente de d�passer le *package* `ggplot2` en impl�mentant une **grammaire des graphiques**

Comme les �l�ments du langage, les **composants �l�mentaires** d'un graphique doivent pouvoir �tre **r�assembl�s** pour produire de **nouvelles repr�sentations.**

\pause 

**Pour aller plus loin** \textsc{Wilkinson L.} (2005) \textit{The Grammar of Graphics}, Springer,  [\underline{ggplot2: elegant graphics for data analysis}](https://github.com/hadley/ggplot2-book)

### \large Les trois composants essentiels d'un graphique

La construction d'un graphique avec `ggplot2` fait intervenir trois composants essentiels (d'apr�s Wickham, *ibid.*, 2.3) : 

- le `data.frame` dans lequel sont stock�es les donn�es � repr�senter ;
- des correspondances esth�tiques (*aesthetic mappings*) entre des variables et des propri�t�s visuelles; 
- au moins une couche (*layer*) d�crivant comment repr�senter les observations.

\pause 

**Exemple** *Miles per gallon* sur l'autoroute en fonction de la cylindr�e.

\center \small 

```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()
```

### \large Les trois composants essentiels d'un graphique

\center \small 

```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-100-1} 


<!-- ### Couleur, forme et taille des objets -->

<!-- \begin{overprint} -->

<!-- \onslide<1;3;5;7|handout:1> -->

<!-- Pour faire varier l'aspect visuel des �l�ments repr�sent�s en fonction de donn�es, il suffit d'\textbf{associer une variable � l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}. -->

<!-- \onslide<3|handout:1> -->

<!-- Selon le type des variables utilis�es pour les correspondances esth�tiques, \textbf{les �chelles sont continues ou discr�tes}. -->

<!-- \onslide<5|handout:1> -->

<!-- Quand la m�me variable est utilis�e dans plusieurs correspondances esth�tiques, \textbf{les �chelles qui lui correspondent sont fusionn�es}. -->

<!-- \onslide<7|handout:1> -->

<!-- Au-del� des correspondances esth�tiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut �tre ajust� directement dans la fonction \texttt{geom\_*}}. -->

<!-- \footnotesize \center -->

<!-- \onslide<2|handout:2> -->

<!-- ```{r, fig.asp = 3/5, fig.width = 6, out.width = "90%"} -->
<!-- ggplot(mpg, aes(displ, hwy, colour = cyl, shape = drv)) + -->
<!--   geom_point() -->
<!-- ``` -->

<!-- \onslide<4|handout:3> -->

<!-- ```{r, fig.asp = 3/5, fig.width = 6, out.width = "90%"} -->
<!-- ggplot(mpg, aes(displ, hwy, colour = as.factor(cyl) -->
<!--   , shape = drv)) + -->
<!--   geom_point() -->
<!-- ``` -->

<!-- \onslide<6|handout:4> -->

<!-- ```{r, fig.asp = 3/5, fig.width = 6, out.width = "90%"} -->
<!-- ggplot(mpg, aes(displ, hwy, colour = as.factor(cyl) -->
<!--   , shape = as.factor(cyl))) + -->
<!--   geom_point() -->
<!-- ``` -->

<!-- \onslide<8|handout:5> -->

<!-- ```{r, fig.asp = 3/5, fig.width = 6, out.width = "90%"} -->
<!-- ggplot(mpg, aes(displ, hwy)) + -->
<!--   geom_point(colour = "red", size = 8, alpha = 0.5) -->
<!-- ``` -->

<!-- \end{overprint} -->



### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des �l�ments repr�sent�s en fonction de donn�es, il suffit d'\textbf{associer une variable � l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

\textcolor{white}{Selon le type des variables utilis�es pour les correspondances esth�tiques, \textbf{les �chelles sont continues ou discr�tes}.}

\textcolor{white}{Quand la m�me variable est utilis�e dans plusieurs correspondances esth�tiques, \textbf{les �chelles qui lui correspondent sont fusionn�es}.}

\textcolor{white}{Au-del� des correspondances esth�tiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut �tre ajust� directement dans la fonction \texttt{geom\_*}}.}




### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = cyl, shape = drv)) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-101-1} 

### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des �l�ments repr�sent�s en fonction de donn�es, il suffit d'\textbf{associer une variable � l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

Selon le type des variables utilis�es pour les correspondances esth�tiques, \textbf{les �chelles sont continues ou discr�tes}. 

\textcolor{white}{Quand la m�me variable est utilis�e dans plusieurs correspondances esth�tiques, \textbf{les �chelles qui lui correspondent sont fusionn�es}.}

\textcolor{white}{Au-del� des correspondances esth�tiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut �tre ajust� directement dans la fonction \texttt{geom\_*}}.}

### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = as.factor(cyl)
  , shape = drv)) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-102-1} 

### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des �l�ments repr�sent�s en fonction de donn�es, il suffit d'\textbf{associer une variable � l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

Selon le type des variables utilis�es pour les correspondances esth�tiques, \textbf{les �chelles sont continues ou discr�tes}. 

Quand la m�me variable est utilis�e dans plusieurs correspondances esth�tiques, \textbf{les �chelles qui lui correspondent sont fusionn�es}. 

\textcolor{white}{Au-del� des correspondances esth�tiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut �tre ajust� directement dans la fonction \texttt{geom\_*}}.}

### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = as.factor(cyl)
  , shape = as.factor(cyl))) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-103-1} 


### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des �l�ments repr�sent�s en fonction de donn�es, il suffit d'\textbf{associer une variable � l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

Selon le type des variables utilis�es pour les correspondances esth�tiques, \textbf{les �chelles sont continues ou discr�tes}. 

Quand la m�me variable est utilis�e dans plusieurs correspondances esth�tiques, \textbf{les �chelles qui lui correspondent sont fusionn�es}. 

Au-del� des correspondances esth�tiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut �tre ajust� directement dans la fonction \texttt{geom\_*}}.

### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point(colour = "red", size = 8, alpha = 0.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-104-1} 

<!-- ### Couleur, forme et taille des objets -->

<!-- \footnotesize \center -->

<!-- ```{r, fig.asp = 3/5, fig.width = 6, out.width = "90%"} -->
<!-- ggplot(diamonds, aes(carat, price)) + -->
<!--   geom_point(alpha = 0.05) -->
<!-- ``` -->

### Combinaison de plusieurs graphiques

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth()
  ## `geom_smooth()` using method = 'loess'
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-105-1} 

### Combinaison de plusieurs graphiques

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-106-1} 

### Combinaison de plusieurs graphiques

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = drv)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-107-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

La construction d'un graphique dans `ggplot2` repose sur la superposition de couches (*layer*) **con�ues ind�pendamment** mais **r�concili�es en fin d'op�ration**. 

\pause Chaque couche est compos�e de cinq �l�ments : 

- un `data.frame` (`data`);
- une ou plusieurs correspondances esth�tiques (`mapping`);
- une transformation statistique (`stat`);
- un objet g�om�trique (`geom`);
- un param�tre d'ajustement de la position (`position`). 

C'est la **fonction `layer()`** qui articule ces cinq �l�ments. 

\pause 

**Les fonctions `geom_*` vues pr�c�demment sont des appels pr�-param�tr�es de `layer()`**.

<!-- ### \large Le fonctionnement en \og couches \fg{} de `ggplot2` -->

<!-- Un graphique � une couche :  -->

<!-- \footnotesize \vspace{-1mm} -->

<!-- ```{r, eval = FALSE} -->
<!-- ggplot() +  -->
<!--   layer( -->
<!--     data = mpg, mapping = aes(displ, hwy) -->
<!--     , stat = "identity", geom = "point", position = "identity" -->
<!--   ) -->
<!-- ``` -->


### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

*Un graphique � une couche*

\footnotesize \centering


```r
ggplot() + layer(
  data = mpg, mapping = aes(displ, hwy), stat = "identity"
  , geom = "point", position = "identity"
)
```


\includegraphics[width=0.8\linewidth]{presentation_files/figure-beamer/unnamed-chunk-108-1} 


<!-- ### \large Le fonctionnement en \og couches \fg{} de `ggplot2` -->

<!-- Un graphique � une couche :  -->

<!-- \footnotesize \vspace{-1mm} -->

<!-- ```{r, eval = FALSE} -->
<!-- ggplot() +  -->
<!--   layer( -->
<!--     data = mpg, mapping = aes(displ, hwy) -->
<!--     , stat = "identity", geom = "point", position = "identity" -->
<!--   ) -->
<!-- ``` -->

<!-- \normalsize \vspace{-3mm} -->

<!-- Un graphique � deux couches :  -->

<!-- \footnotesize \vspace{-1mm} -->

<!-- ```{r, eval = FALSE} -->
<!-- ggplot() +  -->
<!--   layer( -->
<!--     data = mpg, mapping = aes(displ, hwy) -->
<!--     , stat = "identity", geom = "point", position = "identity" -->
<!--   ) +  -->
<!--   layer( -->
<!--     data = mpg, mapping = aes(displ, hwy) -->
<!--     , stat = "smooth", geom = "line", position = "identity" -->
<!--     , params = list(method = "lm", formula = y ~ x) -->
<!--   ) -->
<!-- ``` -->

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

*Un graphique � deux couches*

\footnotesize \centering


```r
ggplot() + layer(
  data = mpg, mapping = aes(displ, hwy), stat = "identity"
  , geom = "point", position = "identity"
) + layer(
  data = mpg, mapping = aes(displ, hwy), stat = "smooth"
  , geom = "line", position = "identity"
  , params = list(method = "lm", formula = y ~ x)
)
```

\vfill

\vfill

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

*Un graphique � deux couches*

\centering


\includegraphics[width=1\linewidth]{presentation_files/figure-beamer/unnamed-chunk-110-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

*Mise en facteur dans `ggplot()` de `data` et `mapping`*

\footnotesize \vspace{-1mm}


```r
ggplot(data = mpg, mapping = aes(displ, hwy)) + layer(
  stat = "identity", geom = "point", position = "identity"
) + layer(
  stat = "smooth", geom = "line", position = "identity"
  , params = list(method = "lm", formula = y ~ x)
)
```

\normalsize \vspace{-3mm}

*Remplacement de `layer()` par des alias pr�-param�tr�s*

\footnotesize \vspace{-1mm}


```r
ggplot(data = mpg, mapping = aes(displ, hwy)) + 
  geom_point() + geom_smooth(method = "lm", se = FALSE)
```



```r
ggplot(data = mpg, mapping = aes(displ, hwy)) + 
  geom_point() + stat_smooth(method = "lm", se = FALSE)
```
### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

� chaque fonction `geom_*()` est assoc�e un param�tre `stat` par d�faut, et � chaque fonction `stat_*()` un `geom` par d�faut.

\footnotesize \center


```r
ggplot(data = mpg, mapping = aes(displ, hwy)) + 
  geom_point(colour = "red", aes(size = cyl)) + 
  stat_smooth(geom = "point", method = "lm", se = FALSE
    , colour = "blue", shape = 2)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-114-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(colour = drv)) + 
  stat_smooth(method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-115-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(shape = drv), colour = "red") + 
  stat_smooth(aes(colour = class), method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-116-1} 


### Histogrammes et densit�s

\footnotesize \center

\vspace{-0.3cm}

```r
ggplot(mpg, aes(hwy)) + geom_histogram()
```


\includegraphics[width=0.8\linewidth]{presentation_files/figure-beamer/unnamed-chunk-117-1} 

\pause \raggedright \small \vspace{-0.3cm}

**Remarque** Le positionnement des classes des histogrammes semble perturb� dans les derni�res versions de `ggplot2` : le param�tre `boundary` permet de corriger ce probl�me (*cf.* [\underline{cette discussion}](http://stackoverflow.com/questions/37876096/geom-histogram-wrong-bins)).

### Histogrammes et densit�s

\footnotesize \center


```r
ggplot(mpg, aes(hwy, colour = drv, fill = drv)) + 
  geom_histogram()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-118-1} 

### Histogrammes et densit�s

\footnotesize \center


```r
ggplot(mpg, aes(hwy)) + geom_density(bw = 0.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-119-1} 

### Histogrammes et densit�s

\footnotesize \center


```r
ggplot(mpg, aes(hwy, colour = drv, fill = drv)) + 
  geom_density(bw = 0.5, alpha = 0.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-120-1} 

### S�ries temporelles

\footnotesize \center


```r
ggplot(economics, aes(date, unemploy / pop)) +
  geom_line()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-121-1} 

### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(drv, colour = drv, fill = drv)) + 
  geom_bar()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-122-1} 

### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
library(scales)
ggplot(mpg, aes(drv, fill = drv)) + 
  geom_bar(aes(y = (..count..)/sum(..count..))) +
  scale_y_continuous(labels=percent) +
  scale_fill_brewer(palette="Blues")
```


\includegraphics[width=0.7\linewidth]{presentation_files/figure-beamer/unnamed-chunk-123-1} 

### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
g <- ggplot(mpg, aes(x = "", fill = drv, colour = drv)) + 
  geom_bar(width = 1)
g
```


\includegraphics[width=0.75\linewidth]{presentation_files/figure-beamer/unnamed-chunk-124-1} 


### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
g + coord_polar(theta = "y") + theme_minimal() +
  scale_fill_grey() + scale_colour_grey()
```


\includegraphics[width=0.5\linewidth]{presentation_files/figure-beamer/unnamed-chunk-125-1} 


\pause \raggedright \small

**Pour aller plus loin** Une page du site [\underline{sthda.com}](http://www.sthda.com/french/wiki/ggplot2-graphique-en-camembert-guide-de-demarrage-rapide-logiciel-r-et-visualisation-de-donnees) explique (en fran�ais) comment produire un diagramme circulaire complet avec `ggplot2`.

### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(drv, fill = as.factor(year))) + 
  geom_bar()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-126-1} 


### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(drv, fill = as.factor(year))) + 
  geom_bar(position = "fill")
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-127-1} 

### Diagrammes en b�tons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(as.factor(year), fill = drv)) + 
  geom_bar(position = "dodge") + 
  coord_flip()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-128-1} 


### Bo�tes � moustaches et assimil�s

\footnotesize \center


```r
ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_boxplot(coef = 1.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-129-1} 

### Bo�tes � moustaches et assimil�s

\footnotesize \center


```r
ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_jitter()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-130-1} 

### Bo�tes � moustaches et assimil�s

\footnotesize \center


```r
ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_violin()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-131-1} 

### Titres et axes

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) + geom_point() + 
  ggtitle("Mon titre avec un retour \n� la ligne") +
  xlab("Cylindr�e") + ylab("Miles per gallon") +
  coord_cartesian(xlim = c(0,10), ylim = c(0, 100))
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-132-1} 



### Disposition : le *facetting*

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE) + 
  facet_wrap(~manufacturer, nrow = 3)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-133-1} 

### Disposition : le *facetting*

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE) + 
  facet_grid(drv~class)
```


\includegraphics[width=1\linewidth]{presentation_files/figure-beamer/unnamed-chunk-134-1} 

### Sauvegarde et exportation

Le r�sultat de la fonction `ggplot()` pouvant �tre stock� dans un objet R, il est possible de le sauvegarder tel quel avec `save()` ou `saveRDS()` et de le r�utiliser par la suite dans R.

```r
g <- ggplot(mpg, aes(displ, hwy)) + geom_point()
saveRDS(g, file = "g.rds")
```

\pause La fonction `ggsave()` simplifie l'export de graphiques en dehors de R. Par d�faut, elle sauvegarde le dernier graphique produit.

```r
g + geom_smooth(method = "lm", se = FALSE)
ggsave("monGraphique.pdf")
ggsave("monGraphique.png")
```

<!-- ## Retour sur la grammaire des graphiques de \protect\texttt{ggplot2} -->

<!-- ### Principe de la construction d'un graphique -->

<!-- ### Une construction en plusieurs couches -->

<!-- ### Construire un graphique �tape par �tape (1) -->

<!-- ### Construire un graphique �tape par �tape (2) -->

<!-- ### Construire un graphique �tape par �tape (3) -->

<!-- ### Utiliser les alias `geom_*` et `stat_*` -->

<!-- ### Fixer la valeur d'un attribut visuel -->

<!-- ### Faire varier les �chelles -->

<!-- ## Faire des cartes avec R -->

<!-- ### Importer des coordonn�es g�ographiques (1) -->

<!-- ### Importer des coordonn�es g�ographiques (2) -->

<!-- ### Faire des cartes avec base R (1) -->

<!-- ### Faire des cartes avec base R (2) -->

<!-- ### Faire des cartes avec base R (3) -->

<!-- ### Faire des cartes avec `ggplot2` (1) -->

<!-- ### Faire des cartes avec `ggplot2` (2) -->

<!-- ### Faire des cartes avec `ggplot2` (3) -->





# G�n�rer automatiquement des documents depuis R

\subsection*{G�n�rer automatiquement des documents depuis R}

### \large Pourquoi g�n�rer automatiquement des documents ?

- Exporter et documenter des **traitements** en vue d'une r�utilisation future : statistiques pour une �tude, traitements r�alis�s lors d'une r�union de travail, etc.

    \vspace{0.2cm} \small 
    **Remarque** Utilisation analogue � celle permise par les instructions \textcolor{blue}{\texttt{ODS RTF}} ou \textcolor{blue}{\texttt{ODS PDF}} de SAS.

\pause \normalsize 

- Construire des **rapports complets et automatis�s** pour des t�ches r�p�titives : rapports d'utilisation, tests de la coh�rence ou de la qualit� de nouvelles donn�es, etc.

\pause \vspace{0.2cm}

- Produire des publications **reproductibles** sur diff�rents supports : notes, documentation, articles de revues, etc.


### \large Principe de la g�n�ration automatique de documents

La g�n�ration automatique de documents complets repose sur deux �l�ments : 

1. Articuler le code, les r�sultats et le commentaire dans un **m�me document** : garantir la coh�rence et faciliter les mises � jour;

2. Formater de fa�on standardis�e le document vers **plusieurs sorties** : `.html`, `.pdf`, `.docx`, `.odt`. 

\pause \small \centering
\begin{tikzpicture}[auto]
    \node [input] (code) {Code R};
    \node [input, right= of code] (tableaux) {Tableaux, graphiques};
    \node [input, right= of tableaux] (commentaire) {Commentaire};
    \node [output, below of=tableaux, node distance = 2cm] (output) {\texttt{.pdf} \texttt{.html} \texttt{.docx} \texttt{.odt}};
    \path [line] (code) -- (output);
    \path [line] (tableaux) -- (output);
    \path [line] (commentaire) -- (output);
\end{tikzpicture}

### \large Etapes de la g�n�ration automatique de documents

\small
\centering
\begin{tikzpicture}[auto]
    \draw[draw, red, very thick, dotted, visible on =<8->] ($(code.north west)+(-0.2,0.9)$)  rectangle ($(commentaire.south east) +(0.2,-3.3)$) node[] at (3.3, 0.9) {\href{https://blog.rstudio.org/2014/06/18/r-markdown-v2/}{\underline{R Markdown v2}} (\texttt{.Rmd})}; 
    \node [input] (code) {Code R};
    \node [input, right= of code] (tableaux) {Tableaux, graphiques};
    \node [input, right= of tableaux] (commentaire) {Commentaire};
    \node [block, below of=tableaux, node distance = 1.5cm, visible on =<2->] (knitr) {\href{http://yihui.name/knitr/}{\underline{knitr}}};
    \node [block, below of=knitr, node distance = 1.5cm, visible on =<3->] (pandoc) {\href{http://rmarkdown.rstudio.com/authoring_pandoc_markdown.html}{\underline{pandoc}}};
    \node [output, below of=pandoc, node distance = 1.5cm, visible on =<5->] (docx) {\texttt{.docx} \texttt{.odt}};
    \node [output, left of=docx, node distance = 3cm, visible on =<4->] (html) {\texttt{.html}};
    \node [output, right of=docx, node distance = 3cm, visible on =<6->] (pdf) {\texttt{.pdf}};
    \node [block, right of=pandoc, node distance = 3cm, visible on =<7->] (latex) {\href{https://www.latex-project.org/}{\underline{LaTeX}}};
    \path [line, visible on =<2->] (code) -- (knitr);
    \path [line, visible on =<2->] (tableaux) -- (knitr);
    \path [line, visible on =<2->] (commentaire) -- (knitr);
    \path [line, visible on =<3->] (knitr) -- (pandoc) node[pos=0.50] {\texttt{.md}};
    \path [line, visible on =<4->] (pandoc) -- (html);
    \path [line, visible on =<5->] (pandoc) -- (docx);
    \path [line, visible on =<7->] (pandoc) -- (latex) node[pos=0.50] {\texttt{.tex}};
    \path [line, visible on =<7->] (latex) -- (pdf);
    \mode<beamer>{\path [visible on =<6>] (pandoc) -- (pdf)  node[pos=0.50] {?};}
\end{tikzpicture}

\raggedright
\pause[9] **Note** `rmarkdown` et `knitr` sont des *packages* R (avec plusieurs d�pendances); pandoc et LaTeX sont des programmes autonomes.

### Pr�parer et tester l'environnement de travail

1. Travailler sous RStudio
    - RStudio facilite l'�dition et la compilation de fichier `.Rmd`;
    - pandoc est embarqu� par d�faut dans RStudio.

\pause \bigskip 

2. Installer les *packages* n�cessaires
    - installer le *package* `rmarkdown` et ses d�pendances;
    - installer le *package* `knitr` et ses d�pendances.

\pause \bigskip 

3. Pour produire des fichiers `.pdf`, installer LaTeX ([\underline{MiKTeX}](https://miktex.org/) sous Windows) et [\underline{s'assurer}](http://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp) que ses programmes figurent dans le *path* de Windows.

\pause \bigskip 

4. Cr�er un nouveau fichier R Markdown (`.Rmd`), installer les *packages* compl�mentaires demand�s, choisir le type de document et compiler le fichier d'exemple (`Ctrl + K`).

### Ecrire du texte dans R Markdown

Pour �crire du texte dans un document R Markdown, il suffit de le **taper dans le fichier `.Rmd`** (sans le commenter ni l'�chapper d'aucune mani�re). 

\pause Des **balises** sp�ciales permettent de mettre en forme le document : 

- les signes `*` et `_` permettent de mettre des mots en `*italique*` ou en `**gras**`;
- les six niveaux de titres sont pr�fix�s par les signes `#` (premier niveau), `##` (deuxi�me niveau), etc.
- des listes sont automatiquement cr��es � partir de successions de `-` ou de s�quences de nombres ou de lettres s�par�es par un retour � la ligne.

\pause 

**Note** Pour une pr�sentation synth�tique de R Markdown, se r�f�rer � l'[\underline{aide-m�moire}](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) (*cheat sheet*) sur le site de RStudio.


### Ecrire du code dans R Markdown

Les blocs de code R sont int�gr�s dans R Markdown de la fa�on suivante : 

````
```{r}
2 + 2
```
````

\pause Par d�faut **le code est �valu�**, et **lui-m�me ainsi que ses r�sultats sont affich�s** dans le document en sortie : 

```r
2 + 2
```

```
  ## [1] 4
```

### Ecrire du code dans R Markdown

Les **options** saisies en d�but de bloc permettent de pr�ciser � `knitr` la mani�re de le prendre en compte, par exemple:

- `eval=FALSE` : le bloc n'est pas �valu�;
- `echo=FALSE` : le bloc n'est pas affich�;
- `collapse=TRUE` : code et r�sultats sont affich�s � la suite.

\pause 

````
```{r, echo=FALSE}
2 + 2
```
````

```
  ## [1] 4
```

\pause 

**Note** Toutes les options de `knitr` relatives aux blocs de code (*chunk options*) sont pr�sent�es sur la [\underline{page}](http://yihui.name/knitr/options/) du cr�ateur du *package*, Yihui Xie.

### Ecrire du code dans R Markdown

Il est �galement possible d'int�grer le r�sultat d'un traitement R dans le corps d'un paragraphe avec la syntaxe : 


```
`r   `
```

\pause 

**Exemple** Pour int�grer dans le texte la date de compilation du document, utiliser 


```
Document compil� le `r Sys.Date()`.
```

\pause Document compil� le 2017-06-21.

### Int�grer des graphiques dans R Markdown

Tous les graphiques produits par les blocs de code sont **automatiquement int�gr�s au fichier final**. 

\pause Un **grand nombre d'options** sont consacr�es au param�trage des graphiques, notamment : 

- `fig.width`, `fig.height` : largeur et hauteur utilis�es pour produire le graphique, en pouces;
- `fig.asp` : rapport hauteur/largeur (`fig.height` est neutralis� quand `fig.asp` est renseign�);
- `out.width`, `out.height` : largeur et hauteur du graphique dans la sortie finale;
- `fig.align` : alignement du grahique (`"left"`, `"right"` ou `"center"`);
- `dpi` (72 par d�faut) : r�solution (utile uniquement pour HTML).



### Int�grer des graphiques dans R Markdown

\footnotesize \center


````
```{r, fig.asp = 3/4, fig.width = 4}
plot(mpg$displ, mpg$hwy)
```
````

![](presentation_files/figure-beamer/unnamed-chunk-145-1.pdf)<!-- --> 

### Int�grer des graphiques dans R Markdown

\footnotesize \center


````
```{r, fig.asp = 3/4, fig.width = 6, out.width = "4in"}
plot(mpg$displ, mpg$hwy)
```
````


\includegraphics[width=4in]{presentation_files/figure-beamer/unnamed-chunk-147-1} 

### Int�grer des tableaux dans R Markdown

Pour construire un tableau dans R Markdown, il suffit de le \og dessiner \fg{} avec les signes `-` et `|` : 


```
Colonne 1 | Colonne 2 | Colonne 3
--------: | :-------- | :-------:
1         | a         | `TRUE`
2         | b         | `FALSE`
```

\pause 

Colonne 1 | Colonne 2 | Colonne 3
--------: | :-------- | :-------:
1         | a         | `TRUE`
2         | b         | `FALSE`

Les `:` permettent de sp�cifier l'alignement des colonnes. 

### Int�grer des tableaux dans R Markdown

En r�gle g�n�rale cependant, les tableaux � int�grer sont g�n�r�s automatiquement � partir des donn�es.

\footnotesize


````
```{r}
resultat <- data.table(mpg)[
    , list(hwy=mean(hwy), cty=mean(cty)), by = drv
]
resultat
```
````

\vspace{-5mm}


```
  ##    drv      hwy     cty
  ## 1:   f 28.16038 19.9717
  ## 2:   4 19.17476 14.3301
  ## 3:   r 21.00000 14.0800
```

\pause \normalsize

La fonction `knitr::kable()` permet de **transformer un objet R en tableau format� pour R Markdown**.

### Int�grer des tableaux dans R Markdown

\footnotesize 

\vspace{-2mm}


````
```{r, results = "asis"}
knitr::kable(resultat)
```
````

\pause \vspace{-10mm}


```
|drv |      hwy|     cty|
|:---|--------:|-------:|
|f   | 28.16038| 19.9717|
|4   | 19.17476| 14.3301|
|r   | 21.00000| 14.0800|
```

\pause \vspace{-1mm}

Ce qui donne une fois format� par R Markdown:



drv         hwy       cty
----  ---------  --------
f      28.16038   19.9717
4      19.17476   14.3301
r      21.00000   14.0800

### Param�trer un document R Markdown

La plupart des param�tres g�n�raux du documents sont � indiquer dans son en-t�te (d�sign� par l'acronyme YAML) : 

\footnotesize


```
---
title: "Formation R Perfectionnement"
author: "Martin Chevalier (Insee)"
output:
  html_document:
    highlight: haddock
    toc: yes
    toc_depth: 2
    toc_float: yes
---
```

\pause \normalsize

**Pour en savoir plus** Le site de RStudio documente le param�trage de l'en-t�te YAML selon les formats de sortie souhait�s ([\underline{\texttt{html}}](http://rmarkdown.rstudio.com/html_document_format.html), [\underline{\texttt{pdf}}](http://rmarkdown.rstudio.com/pdf_document_format.html)).

