---
title: "Formation R Perfectionnement"
fontsize: 12pt
---



# \LARGE Objectifs et organisation

\subsection*{\LARGE Objectifs et organisation}

### \ 

\large 
Apprendre à perfectionner son utilisation de R : acquérir des points de repères, des réflexes, des méthodes de travail.

\bigskip \pause 

Effectuer un panorama structuré et hiérarchisé de méthodes et outils largement utilisés. 

\bigskip \pause 

Prendre du recul sur le logiciel, comprendre certains modes de fonctionnement complexes.  

\bigskip \pause $\Rightarrow$ Mettre en place des \intertitre{fondations solides} pour permettre votre progression dans l'utilisation du logiciel R.

### \ 

\intertitre{Pédagogie} : équilibre entre présentations et cas pratiques (disponibles sur la page [t.slmc.fr/perf](http://t.slmc.fr/perf)).

\pause 

\intertitre{Horaires (proposition !)} : 9h30-12h30 (pause vers 11h), 13h45-17h00 (pause vers 15h15)

\pause \bigskip 

\intertitre{Lundi 16 avril}

- \vspace{-0.2cm} Introduction + Travailler sur des données avec R 1 (généralités, `*apply()`, etc.) (2h)
- Cas pratiques (2h)
- Faire des graphiques avec `ggplot2` et des rapports avec R Markdown (2h)

\pause 

\intertitre{Mardi 17 avril}

- \vspace{-0.2cm} Travailler sur des données 2 avec R (optimisations avec base R, dplyr, data.table)  (2h)
- Cas pratiques (au choix, 4h)


<!-- \large  -->

<!-- 1. Travailler sur des données dans R :  -->

<!--     - travailler efficacement (+++); -->
<!--     - améliorer les performances (+++); -->
<!--     - programmer avec R (++); -->
<!--     - interroger des bases de données (+). -->

<!-- 2. \pause Présenter des résultats avec R :  -->

<!--     - faire des graphiques avec base R et `ggplot2` (++); -->
<!--     - faire du reporting (+). -->


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

### Connaître plus ou connaître mieux ? 

Comme tout langage statistique ou de programmation, R repose sur un ensemble d'instructions plus ou moins complexes. 

\pause \bigskip
Se perfectionner dans la maîtrise de R peut donc signifier deux choses : 

- étendre son \og vocabulaire \fg{} d'instructions connues ;
- mieux comprendre les instructions déjà connues.

\pause \bigskip
En pratique, les deux **vont de pair** : en découvrant de nouvelles fonctions, on est souvent amené à mieux comprendre le fonctionnement de celles que l'on croyait maîtriser. 

### Plan de la partie

\Large 
<!-- \setlength{\parskip}{0pt plus 1fil} -->
\tableofcontents[currentsection, sectionstyle = hide, subsectionstyle = show/show/hide]


## Chercher (et trouver !) de l'aide

### Savoir utiliser l'aide du logiciel

À tout moment, taper `help(nomFonction)` ou `? nomFonction` affiche l'aide de la fonction `nomFonction`.


```r
# Aide de la fonction read.csv
? read.csv
```

\pause 

\intertitre{Remarque} Pour afficher l'aide sur une fonction d'un *package*, il faut que celui-ci soit au préalable chargé (avec `library()` ou `require()`).

\pause La fonction `help.search()` ou la commande `??` permettent d'effectuer une recherche approximative:


```r
# Recherche à partir du mot-clé csv
?? csv
```

### Chercher de l'aide en ligne

Bien souvent, le problème que l'on rencontre a **déjà été rencontré par d'autres**. 

\bigskip
Pour progresser dans la maîtrise de R, il ne faut donc surtout pas hésiter à s'appuyer sur les forums de discussion, comme par exemple [\underline{stackoverflow}](http://stackoverflow.com/questions/tagged/r).

\pause \bigskip
On gagne ainsi souvent beaucoup de temps en formulant le problème que l'on rencontre dans un **moteur de recherche** pour consulter certaines réponses.

\bigskip 
Quand une question semble ne pas avoir été déjà posée, ne pas hésiter à la poser soi-même, en joignant alors un **exemple reproductible** (*minimal working example* ou MWE).

### Afficher le code d'une fonction

Quand l'utilisation d'une fonction pose problème (message d'erreur inattendu), il est souvent utile d'**afficher son code** pour comprendre d'où vient le problème.

\pause Pour ce faire, il suffit de saisir son nom sans parenthèse.

\footnotesize

```r
# Code de la fonction read.csv
read.csv
  ## function (file, header = TRUE, sep = ",", quote = "\"", dec = ".", 
  ##     fill = TRUE, comment.char = "", ...) 
  ## read.table(file = file, header = header, sep = sep, quote = quote, 
  ##     dec = dec, fill = fill, comment.char = comment.char, ...)
  ## <bytecode: 0x8883a98>
  ## <environment: namespace:utils>
```

\pause \normalsize
Afficher le code d'une fonction est dans certains cas plus difficile, *cf.* [\underline{stackoverflow}](http://stackoverflow.com/questions/19226816/how-can-i-view-the-source-code-for-a-function).

## Découvrir de nouvelles fonctionnalités

### Se repérer dans les CRAN \protect\textit{Task Views}

Les CRAN *Task Views* recensent les fonctions et *packages* de façon thématique. Elles sont mises à jour régulièrement et portent sur des thèmes variés:  

\pause

\footnotesize \href{https://cran.r-project.org/web/views/Bayesian.html}{Bayesian}, \href{https://cran.r-project.org/web/views/ChemPhys.html}{ChemPhys}, \href{https://cran.r-project.org/web/views/ClinicalTrials.html}{ClinicalTrials}, \href{https://cran.r-project.org/web/views/Cluster.html}{Cluster}, \href{https://cran.r-project.org/web/views/DifferentialEquations.html}{DifferentialEquations}, \href{https://cran.r-project.org/web/views/Distributions.html}{Distributions}, \href{https://cran.r-project.org/web/views/Econometrics.html}{Econometrics}, \href{https://cran.r-project.org/web/views/Environmetrics.html}{Environmetrics}, \href{https://cran.r-project.org/web/views/ExperimentalDesign.html}{ExperimentalDesign}, \href{https://cran.r-project.org/web/views/ExtremeValue.html}{ExtremeValue}, \href{https://cran.r-project.org/web/views/Finance.html}{Finance}, \href{https://cran.r-project.org/web/views/FunctionalData.html}{FunctionalData}, \href{https://cran.r-project.org/web/views/Genetics.html}{Genetics}, \href{https://cran.r-project.org/web/views/Graphics.html}{Graphics}, \href{https://cran.r-project.org/web/views/HighPerformanceComputing.html}{HighPerformanceComputing}, \href{https://cran.r-project.org/web/views/MachineLearning.html}{MachineLearning}, \href{https://cran.r-project.org/web/views/MedicalImaging.html}{MedicalImaging}, \href{https://cran.r-project.org/web/views/MetaAnalysis.html}{MetaAnalysis}, \href{https://cran.r-project.org/web/views/ModelDeployment.html}{ModelDeployment}, \href{https://cran.r-project.org/web/views/Multivariate.html}{Multivariate}, \href{https://cran.r-project.org/web/views/NaturalLanguageProcessing.html}{NaturalLanguageProcessing}, \href{https://cran.r-project.org/web/views/NumericalMathematics.html}{NumericalMathematics}, \href{https://cran.r-project.org/web/views/OfficialStatistics.html}{OfficialStatistics}, \href{https://cran.r-project.org/web/views/Optimization.html}{Optimization}, \href{https://cran.r-project.org/web/views/Pharmacokinetics.html}{Pharmacokinetics}, \href{https://cran.r-project.org/web/views/Phylogenetics.html}{Phylogenetics}, \href{https://cran.r-project.org/web/views/Psychometrics.html}{Psychometrics}, \href{https://cran.r-project.org/web/views/ReproducibleResearch.html}{ReproducibleResearch}, \href{https://cran.r-project.org/web/views/Robust.html}{Robust}, \href{https://cran.r-project.org/web/views/SocialSciences.html}{SocialSciences}, \href{https://cran.r-project.org/web/views/Spatial.html}{Spatial}, \href{https://cran.r-project.org/web/views/SpatioTemporal.html}{SpatioTemporal}, \href{https://cran.r-project.org/web/views/Survival.html}{Survival}, \href{https://cran.r-project.org/web/views/TimeSeries.html}{TimeSeries}, \href{https://cran.r-project.org/web/views/WebTechnologies.html}{WebTechnologies}, \href{https://cran.r-project.org/web/views/gR.html}{gR}

\pause \bigskip \normalsize
La liste de toutes les *Task Views* est accessible à la page : [\underline{https://cran.r-project.org/web/views}](https://cran.r-project.org/web/views).

### Consulter des sites, tutoriels, livres

De plus en plus de supports sont consacrés à la présentation et à l'enseignement des fonctionnalités de R, comme par exemple : 

- \pause le site [\underline{R-bloggers}](https://www.r-bloggers.com): articles en général courts sur des exemples d'applications (de qualité inégale);

- \pause le site [\underline{bookdown.org}](https://bookdown.org): dépôt de livres numériques consacrés à R élaborés avec R Markdown (très riches et très complets);

- \pause le site de [\underline{RStudio}](https://www.rstudio.com): nombreux [\underline{aides-mémoires}](https://www.rstudio.com/resources/cheatsheets/) ou articles présentant les fonctionnalités de l'écosystème RStudio;

- \pause les ouvrages de [\underline{Hadley Wickham}](http://hadley.nz): [\underline{ggplot2: elegant graphics for data analysis}](https://github.com/hadley/ggplot2-book) (à compiler soi-même), [\underline{Advanced R}](http:/:adv-r.had.co.nz).

## Utiliser de nouveaux \protect\textit{packages}

### Accéder à la documentation d'un *package*

Une des principales forces de R est d'être un langage hautement modulaire comptant **plusieurs milliers de *packages*** (12 416 au 10/04/2018).

\pause Toutes les informations sur un *package* sont accessibles sur sa page du *Comprehensive R Archive Network* (CRAN). 

\intertitre{Exemple} https://CRAN.R-project.org/package=haven

\pause \bigskip On trouve en particulier sur cette page:

- les **dépendances** du *package* (*Depends* et *Imports*);
- un lien vers sa **page de développement** (*URL*);
- une **version .pdf de son aide** (*Reference manual*)
- éventuellement un ou plusieurs **documents de démonstration** (*Vignettes*).

### Installer un *package* automatiquement

La fonction `install.packages("nomPackage")` permet d'installer automatiquement le *package* `nomPackage`. 

Les données nécessaires sont téléchargées depuis un des dépôts du CRAN (*repositories* ou en abrégé `repos`).

C'est la **méthode à privilégier**:  les dépendances nécessaires au bon fonctionnement du *package* sont détectées et automatiquement installées.

<!-- \pause  -->

<!-- \intertitre{Remarque} Cette méthode fonctionne à l'Insee: -->

<!-- - pour les installations locales de R sur les postes de travail; -->
<!-- - sur AUS, *via* un dépôt local spécifique; -->
<!-- - mais PAS sur les sessions des postes de formation. -->

### Installer un *package* manuellement

La page d'information d'un *package* comporte également des liens vers les fichiers qui le composent. 

Quand l'installation directe depuis un dépôt du CRAN est indisponible, il suffit de **télécharger ces fichiers** et d'**installer manuellement le *package***.

Pour une installation sous Windows, il faut privilégier les **fichiers compilés** (*Windows binaries*). 

\pause \small


```r
# Note : Le fichier haven._1.1.0.zip est situé 
# dans le répertoire de travail
install.packages(
  "haven_1.1.0.zip", repos = NULL, type = "binaries"
)
```

### Installer des *packages* depuis github

En règle générale, le développement de *packages* s'appuie sur des plate-formes de **développement collaboratif** comme [\underline{Github}](https://github.com).

\pause La **page de développement** d'un *package* comporte plusieurs informations préciseuses : 

- la dernière version du *package* et de sa documentation;
- des informations sur son développement; 
- une zone pour rapporter d'éventuels *bugs* (*bug reports*).

\intertitre{Exemple} https://github.com/tidyverse/haven 

\pause La fonction `install_github()` du *package* `devtools` permet d'installer un *package* directement depuis GitHub.


```r
library(devtools)
install_github("tidyverse/haven")
```


### Utiliser les données d'exemples d'un *package*

La plupart des **packages** contiennent des **données d'exemples** utilisées notamment dans son aide ou ses vignettes.

Une fois le *package* installé, il suffit d'utiliser la fonction `data(package = "nomPackage")` pour afficher les données qu'il contient.


```r
library(ggplot2)
data(package = "ggplot2")
```

\pause Pour \og rapatrier \fg{} dans l'environnement global les données d'un *package*, c'est de nouveau la fonction `data()` qu'il faut utiliser. 


```r
data(mpg)
```





# Travailler\ efficacement\ sur\ des\ données\ avec\ R

## Travailler\ efficacement\ sur\ des\ données\ avec\ R {.unnumbered}

### Qu'est-ce que travailler efficacement avec R ? 

Appliqué au travail sur des données, l'efficacité peut avoir au moins deux significations distinctes : 

- efficacité **algorithmique** : minimisation du temps passé par la machine pour réaliser une série d'opérations;
- **productivité** du programmeur : minimisation du temps passé à coder une série d'opération. 

\pause En règle générale, on peut avoir l'idée que plus on souhaite être efficace algorithmiquement, plus la programmation risque d'être longue et difficile. 

\pause \intertitre{Ce n'est pas toujours vrai} : on perd souvent beaucoup de temps à (ré)inventer une méthode peu efficace quand une beaucoup plus simple et rapide existe déjà.

\pause \small

**Référence** \textsc{Gillepsie C., Lovelace R.}, \textit{Efficient R programming} (disponible sur [\underline{bookdown.org}](](https://bookdown.org/csgillepsie/efficientR)))


### Mesure l'efficacité algorithmique

La fonction `system.time()` permet de mesurer la durée d'un traitement. 

\footnotesize

```r
system.time(rnorm(1e6))
  ## utilisateur     système      écoulé 
  ##       0.072       0.000       0.072
```

\pause \normalsize
Néanmoins, elle est inadaptée aux traitements de très courte durée. Dans ces situations, privilégier la fonction `microbenchmark()` du package `microbenchmark`.

\footnotesize

```r
library(microbenchmark)
microbenchmark(times = 10, rnorm(1e6))
  ## Unit: milliseconds
  ##          expr      min       lq    mean median
  ##  rnorm(1e+06) 68.16277 68.84521 69.0792 68.892
  ##        uq      max neval
  ##  69.05627 70.45888    10
```

### Mesurer la taille d'un objet en mémoire

R stocke l'ensemble des fichiers sur lesquels il travaille dans la mémoire vive.

Afin de loger les objets les plus gros mais aussi d'optimiser les performances, il est souvent utile de **limiter la taille des objets** sur lesquels portent les traitements.

\pause Pour mesurer la taille des objets, utiliser la fonction `object_size()` du *package* `pryr`. 


```r
library(pryr)
object_size(rnorm(1e6))
  ## 8 MB
```

### Construire un exemple reproductible (MWE)

Lorsque l'on cherche à améliorer les performances d'un programme, il est important de pouvoir le tester sur des données **autonomes et reproductibles**. 

\pause Pour ce faire, les **fonctions de générations de nombres aléatoires** de R sont particulièrement utiles. 

\footnotesize

```r
# Graine pour pouvoir reproduire l'aléa
set.seed(2018)

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
# ... même assigner une valeur
is.function(`<-`)
  ## [1] TRUE
`<-`(a, 10)

# ... même afficher la valeur d'un objet
a
  ## [1] 10
print(a)
  ## [1] 10
```

### Définir une fonction dans R

Utilisé avec `<-`, `function()` définit une nouvelle fonction :

\pause \footnotesize


```r
# Définition de la fonction monCalcul()
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

### Valeurs par défaut des paramètres

Des valeurs par défaut peuvent être renseignées pour les paramètres. 


```r
monCalcul <- function(a, b = 3) 10 * a + b
monCalcul(8)
  ## [1] 83
```

\pause Les valeurs par défaut peuvent dépendre des autres paramètres.


```r
monCalcul <- function(a, b = a * 2) 10 * a + b
monCalcul(2)
  ## [1] 24
```

\pause \intertitre{Remarque} Ceci est la conséquence de la *lazy evaluation* des arguments dans R (*cf.* [\underline{\textit{Advanced R}}](http://adv-r.had.co.nz/Functions.html#function-arguments)).

### Contrôle de la valeur des paramètres

Des structures conditionnelles `if()` permettent de contrôler la valeur des arguments. 

\pause \footnotesize

```r
monCalcul <- function(a = NULL, b = NULL){
  if(is.null(a)) stop("a n'est pas renseigné.")
  if(is.null(b)){
    b <- a * 2
    warning("b n'est pas renseigné.")
  }
  return(10 * a + b)
}

monCalcul(b = 3)
  ## Error in monCalcul(b = 3): a n'est pas renseigné.
monCalcul(a = 1)
  ## Warning in monCalcul(a = 1): b n'est pas renseigné.
  ## [1] 12
```

### \large Portée des variables et environnements (1)

Dans R **chaque objet est repéré par son nom et son environnement** : cela permet d'éviter les conflits de noms.

\pause \footnotesize

```r
# Création d'une fonction sum() un peu absurde
sum <- function(...) "Ma super somme !"
sum(2, 3)
  ## [1] "Ma super somme !"

# Cette fonction est rattachée à l'environnement global
ls()
  ## [1] "a"         "b"         "c"         "monCalcul"
  ## [5] "sum"

# Mais on peut toujours accéder à la fonction 
# de base en utilisant ::
base::sum(2, 3)
  ## [1] 5
```



### \large Portée des variables et environnements (2)

\small
À chaque appel d'une fonction, un **environnement d'exécution** est créé.

\footnotesize

```r
maFun <- function() environment()
maFun()
  ## <environment: 0xb82b160>
maFun()
  ## <environment: 0xb667210>
```

\pause \small
En conséquence, les instructions exécutées à l'intérieur d'une fonction **ne modifient pas l'environnement global**.

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

### \large Portée des variables et environnements (3)

En revanche, les objets définis dans l'environnement global sont accessibles au sein d'une fonction. 

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
Ceci est dû au fait que les environnements dans lequel R recherche des objets sont **emboîtés les uns dans les autres** (\textit{cf.} la fonction `search()`).

\intertitre{Pour en savoir plus} [\underline{\textit{Advanced R}}](http://adv-r.had.co.nz/Environments.html#function-envs), [\underline{obeautifulcode.com}](http://blog.obeautifulcode.com/R/How-R-Searches-And-Finds-Stuff/)


### Valeur de retour d'une fonction

La fonction `return()` spécifie la valeur à renvoyer. Pour renvoyer plusieurs valeurs, utiliser une liste.

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

Par défaut, les fonctions dans R : 

- ne modifient pas l'environnement d'origine (il n'y a **pas d'effets de bord**);
- peuvent être utilisées en lieu et place des valeurs qu'elles retournent.

```r
monCalcul <-  function(a, b) 10 * a + b
monCalcul(2, 3) + 5
  ## [1] 28
```

\pause Ces éléments font de R un **langage particulièrement adapté à la programmation fonctionnelle**. 


### Quelques principes de la programmation fonctionnelle

\vfill

1. **Ne jamais créer d'effets de bord** Toute modification apportée à l'environnement par une fonction passe par sa valeur de sortie. 

\vfill

2. \pause \textbf{Vectoriser \textit{i.e.} appliquer des fonctions systématiquement à un ensemble d'éléments} Fonctions `*apply()`, `Reduce()`, `do.call()`. 

\vfill

3. \pause \textbf{Structurer les traitements à l'aide de fonctions courtes et explicites} Faciliter la relecture, la maintenance et la modularisation. 

\vfill

\pause \intertitre{Pour en savoir plus} [\underline{Wikipedia}](https://en.wikipedia.org/wiki/FP_(programming_language)), [\underline{maryrosecook.com}](https://maryrosecook.com/blog/post/a-practical-introduction-to-functional-programming).

\vfill

## Vectoriser : `*apply()`, `Reduce()` et `do.call()`

### \large Appliquer sur chaque indépendamment : `apply()`

La fonction `apply(X, MARGIN, FUN)` applique la fonction `FUN` à la **matrice** `X` selon la dimension `MARGIN`.

\pause \footnotesize

```r
# Définition et affichage de la matrice m
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


### \large Appliquer sur chaque indépendamment : `lapply()`

\small
La fonction `lapply(X, FUN)` applique la fonction `FUN` au **vecteur** ou à la **liste** `X`.

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

\intertitre{Exemple d'utilisation} Appliquer une fonction à toutes les variables d'une table.

### \large Appliquer sur chaque indépendamment : `sapply()`

La fonction `sapply()` est analogue à la fonction `lapply()`, mais simplifie le résultat produit quand c'est possible.


```r
sapply(l, sum)
  ## [1] 15 NA
```

\pause Les arguments optionnels de la fonction utilisée peuvent être ajoutés à la suite dans toutes les fonctions `*apply()`. 


```r
sapply(l, sum, na.rm = TRUE)
  ## [1] 15 30
```

\pause \intertitre{Exemple d'utilisation} Calcul de statistiques sur toutes les variables d'une table.

### \large Définir une fonction à la volée dans `*apply()`

Il est fréquent que l'opération que l'on souhaite appliquer ne corresponde pas exactement à une fonction pré-existante. 

\pause Dans ce cas, on peut définir une **fonction à la volée** dans la fonction `*apply()`. 

\footnotesize

```r
# On souhaite sélectionner le second élément de 
# de chaque vecteur de la liste l
l
  ## [[1]]
  ## [1] 1 2 3 4 5
  ## 
  ## [[2]]
  ## [1]  6  7  8  9 NA

# On définit une fonction dans sapply()
sapply(l, function(x) x[2])
  ## [1] 2 7
```

### \large Appliquer sur chaque par groupe : `tapply()`

La fonction `tapply(X, INDEX, FUN)` applique la fonction `FUN`, à l'objet `X` ventilé selon les modalités de `INDEX`. 

\footnotesize \pause

```r
# Variables d'âge et de sexe
age <- c(45, 50, 35, 20)
sexe <- c("H", "F", "F", "H")

# Âge moyen par sexe
tapply(age, sexe, mean)
  ##    F    H 
  ## 42.5 32.5

# Même résultat avec une combinaison de sapply() et de split()
sapply(split(age, sexe), mean)
  ##    F    H 
  ## 42.5 32.5
```

\normalsize \pause \vspace{-0.2cm}

\intertitre{Exemple d'utilisation} Calcul de statistiques agrégées par catégories.

### \large Appliquer sur tous : `do.call()`

La fonction `do.call(what, args)` permet d'appliquer la fonction `what()` à un **ensemble** d'arguments `args` spécifié comme une liste (alors que les fonctions `*apply()` appliqueraient `what()` à **chaque** élément de `args`).

\pause \small

```r
# Concaténation des vecteurs de l
do.call(base::c, l)
  ##  [1]  1  2  3  4  5  6  7  8  9 NA

# Equivalent à 
base::c(l[[1]], l[[2]])
  ##  [1]  1  2  3  4  5  6  7  8  9 NA
```

\pause \normalsize

\intertitre{Exemple d'utilisation} Concaténer de nombreuses tables avec `rbind()` ou `cbind()`.

### \large Appliquer sur tous successivement : `Reduce()`

La fonction `Reduce(f, x)` permet d'appliquer la fonction `f()` **successivement** à l'ensemble des éléments  de `x` (alors que `do.call()` applique `f` **simultanément**).

\pause \small

```r
# Application successive de la division au vecteur 1:4
Reduce(`/`, 1:4)
  ## [1] 0.04166667

# Equivalent à 
((1/2)/3)/4
  ## [1] 0.04166667
```

\pause \normalsize

\intertitre{Exemple d'utilisation} Fusionner de nombreuses tables avec `merge()` (sur les mêmes identifiants).


## Coder efficacement en base R

### L'idée : En faire faire le moins possible à R

R est un langage dit \og de haut niveau \fg{} : les objets qui le composent sont relativement faciles d'utilisation, au prix de performances limitées. 

\vfill

À l'inverse, des langages dits de \og bas niveau \fg{} (par exemple C++) sont plus difficiles à utiliser mais aussi plus efficaces. 

\vfill

\pause La plupart des fonctions fondamentales de R font appel à des fonctions compilées à partir d'un langage de plus bas niveau. 

\vfill

D'où le principe : **limiter au maximum la surcharge liée à R** pour retomber au plus vite sur des fonctions pré-compilées.

\pause \vfill

\intertitre{Remarque} Il est très facile en pratique d'utiliser R comme une interface vers des langages de plus bas niveau, *cf. infra* à propos de `Rcpp`. 




### Utiliser les boucles avec parcimonie (1)

Comme la plupart des langages de programmation, R dispose de **structures de contrôles** permettant de réaliser des boucles. 

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
Ces opérations présentent plusieurs inconvénients : 

1. Elles sont longues à écrire et assez peu claires;
2. Elles reposent sur des effets de bord;
3. Elles sont en général très peu **efficaces algorithmiquement**.

### Utiliser les boucles avec parcimonie (2)

\small
Les méthodes de vectorisation sont en général beaucoup plus efficaces que les boucles en R : 

- vectorisation de haut niveau (*cf.* *supra*);
- vectorisation de bas niveau : la vectorisation est opérée par le langage de bas niveau auquel fait appel R. 

\pause \footnotesize

```r
summary(microbenchmark(times = 10L
  , boucle = boucle(1:1e4)
  , Reduce = Reduce(`+`, 1:1e4, accumulate = TRUE)
  , cumsum = cumsum(1:1e4)
))[, 1:4]
  ##     expr       min        lq       mean
  ## 1 boucle 15751.411 16676.220 17342.6323
  ## 2 Reduce  5828.524  5945.065  6662.3951
  ## 3 cumsum    37.019    39.746    47.2646
```

### Tirer le meilleur parti de la compilation (1)

On distingue souvent deux familles de langages informatiques : 

- \pause \vspace{-0.2cm} les langages **compilés** (C, C++) : l'ensemble du code est transformé en langage machine par un *compilateur* puis soumis par le système d'exploitation;
- \pause les langages **interprétés** (R, Python) : les instructions du code sont soumises les unes après les autres par un *interpréteur*, ce qui est moins efficace (*cf.* boucles en R). 

\vspace{0.1cm} \pause La fonction `compiler::cmpfun()` permet néanmoins de **compiler** des fonctions R avant utilisation.

\pause \footnotesize \vspace{-0.2cm}

```r
# Compilation de la fonction boucle()
boucle_compil <- compiler::cmpfun(boucle)
microbenchmark(boucle(1:1e4), boucle_compil(1:1e4))
  ## Unit: milliseconds
  ##                    expr       min        lq      mean
  ##         boucle(1:10000) 15.805389 17.005351 17.874497
  ##  boucle_compil(1:10000)  1.588799  1.722751  1.750571
  ##     median        uq       max neval
  ##  17.697739 18.263382 21.722003   100
  ##   1.738325  1.765799  2.212019   100
```

### Tirer le meilleur parti de la compilation (2)

Une autre fonctionnalité du *package* `compiler` est la compilation \og juste-à-temps \fg{} (ou \textit{just-in-time}, JIT): le code n'est plus interprété mais **compilé au fur et à mesure**.

\bigskip \pause Dans R, on active le mode JIT pour une session grâce à la fonction `compiler::enableJIT()` en spécifiant le [\underline{niveau de compilation JIT}](https://stat.ethz.ch/R-manual/R-devel/library/compiler/html/compile.html) (de 0 à 3).

\pause \footnotesize

```r
# Passage au niveau maximal de compilation JIT
compiler::enableJIT(3)
  ## [1] 0
summary(microbenchmark(boucle(1:1e4), boucle_compil(1:1e4)))[, 1:4]
  ##                     expr      min       lq     mean
  ## 1        boucle(1:10000) 1.582040 1.603213 1.729375
  ## 2 boucle_compil(1:10000) 1.585057 1.609157 1.657959
```

\pause \small \intertitre{Remarque} Depuis R 3.4.0, `enableJIT()` vaut 3 par défaut. 

### Utiliser l'opérateur `[` au lieu de `ifelse()`

\small
Lorsqu'on crée une variable en faisant intervenir une condition, il est fréquent d'utiliser la fonction `ifelse()` : 

\footnotesize

```r
notes <- runif(n = 100000, min = 0, max = 20)
mavar <- ifelse(notes >= 10, "Reçu", "Recalé")
```

\pause \small
Il est néanmoins beaucoup plus efficace d'utiliser l'opérateur `[`. 

\footnotesize

```r
microbenchmark(times = 10L
  , ifelse = ifelse(notes >= 10, "Reçu", "Recalé")
  , "[" = {
    mavar <- rep("Recalé", length(notes))
    mavar[notes >= 10] <- "Reçu"
  } 
)
  ## Unit: milliseconds
  ##    expr      min        lq     mean    median
  ##  ifelse 26.25032 26.321084 26.71476 26.460366
  ##       [  1.39027  1.431458  1.51165  1.470771
  ##         uq       max neval
  ##  26.714720 28.400851    10
  ##   1.567792  1.750101    10
```

### Simplifier les données :  le type `factor`

On utilise souvent des chaînes de caractère pour coder une variable de nature catégorielle.

Le type `factor` permet de remplacer chaque valeur distincte par un entier en sauvegardant la table de correspondance. Il est **beaucoup plus léger**.

\pause \footnotesize


```r
# Variable à deux modalités codées en caractères
sexe <- sample(c("H", "F"), 120000, replace = TRUE)
object_size(sexe)
  ## 960 kB

# Conversion en facteur
f.sexe <- factor(sexe)
str(f.sexe)
  ##  Factor w/ 2 levels "F","H": 1 2 1 2 1 2 2 2 1 1 ...
object_size(f.sexe)
  ## 481 kB
```

### Utiliser les noms à bon escient (1)

La plupart des objets manipulés couramment dans R peuvent être **nommés** : vecteurs, matrices, listes, `data.frame`. 

Utiliser des noms est une méthode souvent **très rapide** pour **accéder aux éléments** qui composent ces objets.

\ 

\pause 

\intertitre{Exemple} On cherche à extraire les observations d'une table *via* leur identifiant `id`. On compare l'utilisation des noms à une fusion réalisée avec `merge()`.

\small 


```r
# Création de la table df
id <- as.character(sample(1e5))
sexe <- sample(1:2, 1e5, replace = TRUE)
df <- data.frame(id, sexe)
```

### Utiliser les noms à bon escient (2)

\footnotesize


```r
# Affectation de noms à df 
row.names(df) <- id

# Liste des identifiants à extraire
extract <- c("234", "12", "7890")

# Comparaison
microbenchmark(times = 10L
  , merge = merge(data.frame(id = extract), df, sort = FALSE)
  , names = df[extract, ]
)
  ## Unit: milliseconds
  ##   expr       min        lq     mean    median
  ##  merge 14.794181 15.264378 15.40527 15.437613
  ##  names  2.611688  2.655904  2.81817  2.736901
  ##         uq       max neval
  ##  15.636058 15.901694    10
  ##   3.019022  3.074043    10
```


### À propos des matrices (1)

Quand c'est possible, **travailler sur des matrices** (plutôt que des `data.frame`) est souvent source d'efficacité : 

\vfill

- \pause de nombreuses opérations sont **vectorisées** pour les matrices : sommes en lignes et en colonnes (`rowSums()` et `colSums()`), etc. ;

\vfill 

- \pause l'**algèbre matricielle** (le produit matriciel notamment) est très bien optimisée ;

\vfill

- \pause selon la nature du problème, l'utilisation de **matrices lacunaires** (*sparse*) peut faire gagner et en empreinte mémoire et en temps de calcul (*cf.* le *package* `Matrix`).

### À propos des matrices (2)

\footnotesize 


```r
# Création d'une matrice m avec 99 % de 0
v <- rep(0, 1e6); v[sample(1e6, 1e4)] <- rnorm(1e4)
m <- matrix(v, ncol = 100)

# Transformation en matrice lacunaire
library(Matrix)
M <- Matrix(m)

# Gain en espace (en ko)
c(object_size(m), object_size(M))
  ## [1] 8000200  121824

# Gain de performances pour la fonction colSums()
microbenchmark(dense = colSums(m), sparse = colSums(M))
  ## Unit: microseconds
  ##    expr      min       lq       mean    median
  ##   dense 1260.470 1281.146 1313.86973 1310.1305
  ##  sparse   56.086   70.537   82.59214   83.2135
  ##         uq      max neval
  ##  1333.8945 1444.225   100
  ##    92.3815  148.062   100
```

## dplyr : une grammaire du traitement des données

### Philosophie de `dplyr`

`dplyr` est un *package* développé par RStudio et en particulier par Hadley Wickham. Il constitue un véritable **écosystème** visant à faciliter le travail sur des tables statistiques :

- \pause il fournit un ensemble de **fonctions élémentaires** (les \og verbes \fg{}) pour effectuer les manipulations de données;
- \pause plusieurs verbes peuvent facilement être **combinés en utilisant l'opérateur `%>%`** (*pipe*);
- \pause toutes les opérations sont optimisées par du **code de bas niveau**. 


```r
library(dplyr)
```

\pause

\intertitre{Pour en savoir plus} De nombreuses vignettes très pédagogiques sont disponibles sur la [\underline{page du \textit{package}}](https://cran.r-project.org/package=dplyr). Un [\underline{aide-mémoire}](https://www.rstudio.com/wp-content/uploads/2016/01/data-wrangling-french.pdf) est également disponible sur le site de RStudio.

### \large Données d'exemple : table `flights` de `nycflights13`

Les exemples relatifs aux *packages* `dplyr` et `data.table` s'appuient sur les données du *package* `nycflights13`.


```r
library(nycflights13)
```

\pause Ce *package* contient des données sur tous les vols au départ de la ville de New-York en 2013. 

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

### Simplifier des opérations de base R

`dplyr` propose plusieurs verbes pour simplifier certaines opérations parfois fastidieuses en base R : 

\pause \vspace{-1mm}
- `filter()` sélectionne des observations selon une ou plusieurs conditions;

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
- `select()` sélectionne des variables par leur noms;

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

La fonction `summarise()` permet de facilement calculer des statistiques sur des données. 

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

\intertitre{Remarque} Comme toutes les fonctions de `dplyr`, `summarise()` prend un `data.frame` en entrée et produit un `data.frame` en sortie. 


### Ventiler des traitements avec `group_by()`

Appliqué au préalable à un `data.frame`, `group_by()` ventile tous les traitements ultérieurs selon les modalités d'une ou plusieurs variables.


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


### Enchaîner des opérations avec `%>%`

L'utilisation des verbes de `dplyr` ne prend tout son intérêt que quand ils sont enchaînés en utilisant l'opérateur *pipe* `%>%`. 

`maTable %>% maFonction(param1, param2)` est équivalent à `maFonction(maTable, param1, param2)`. 

\pause Ainsi, l'**enchaînement de nombreuses opérations** devient beaucoup plus facile à mettre en \oe uvre et à comprendre. 

\pause \footnotesize


```r
flights %>%
  group_by(year, month, day) %>%
  summarise(
    retard_arrivee = mean(arr_delay, na.rm = TRUE),
    retard_depart = mean(dep_delay, na.rm = TRUE)
  ) %>%
  filter(retard_arrivee > 30 | retard_depart > 30)
```


### Fusionner des tables avec `*_join()`

`dplyr` dispose de nombreuses fonctions très utiles pour fusionner une ou plusieurs tables ensemble, qui **s'inspirent très fortement de SQL** : 

- `a %>% left_join(b, by = "id")` : fusionne `a` et `b` en conservant toutes les observations de `a`;
- `a %>% right_join(b, by = "id")` : fusionne `a` et `b` en conservant toutes les observations de `b`;
- `a %>% inner_join(b, by = "id")` : fusionne `a` et `b` en ne conservant que les observations dans `a` et `b`;
- `a %>% full_join(b, by = "id")` : fusionne `a` et `b` en conservant toutes les observations.

\intertitre{Pour en savoir plus} Une [\underline{vignette}](https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html) est consacrée à la présentation des fonctions de `dplyr` portant sur deux tables.

### Comparaison de base R et de `dplyr`

`dplyr` est particulièrement intéressant pour travailler sur des données par groupe. On compare donc l'utilisation de `tapply()` de base R avec `group_by()` de `dplyr`.

\footnotesize \pause 


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
  ##   base 36.33509 42.80433 42.41404 43.29193 44.16897
  ##  dplyr 53.33831 53.45452 56.14469 55.14207 56.00287
  ##       max neval
  ##  45.50056    10
  ##  65.04266    10
```

<!-- ## Une petite parenthèse {.unnumbered} -->

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

<!-- Ce *package* permet ainsi de bénéficier de toute la souplesse de SQL dans R, notamment pour les fusions de tables.  -->

<!-- Ses performances sont cependant en général **en retrait** par rapport aux solutions alternatives. -->

<!-- \footnotesize -->

<!-- \vspace{-2mm} -->

<!-- ```{r} -->
<!-- microbenchmark(times = 1L -->
<!--   , sqldf = sqldf("select sum(x) from df group by by") -->
<!-- ) -->
<!-- ``` -->

## data.table : un data.frame optimisé

### Philosophie de `data.table`

Contrairement à `dplyr`, `data.table` ne cherche pas à se substituer à base R mais à le compléter. 

\pause Il introduit un nouveau type d'objet, le `data.table`, qui **hérite** du `data.frame` (tout `data.table` est un `data.frame`).

\pause Appliqué à un `data.table`, l'opérateur `[` est **enrichi et optimisé**.


```r
library(data.table)
flights_DT <- data.table(flights)
```

\pause 

\intertitre{Pour en savoir plus} Là encore des vignettes très pédagogiques sont disponibles sur la [\underline{page du \textit{package}}](https://cran.r-project.org/package=data.table).

### L'opérateur `[` du `data.table` : `i`, `j` et `by`

La syntaxe de l'opérateur `[` appliqué à un `data.table` est la suivante (`DT` représente le `data.table`): 

\pause \centering \large

`DT[i, j, by]`

\raggedright \normalsize

- `i` : sélectionner des observations selon une condition;
- `j` : sélectionner ou **créer** une ou plusieurs variables;
- `by` : ventiler les traitements selon les modalités d'une ou plusieurs variables.

\pause \bigskip 

\pause \intertitre{Exemple} Retard quotidien maximal au mois de janvier.

\small


```r
flights_DT[
  month == 1, max(arr_delay, na.rm = TRUE), by = day
]
```
### Sélectionner des observations avec `i`

\small
Il est beaucoup plus simple et efficace de sélectionner des observations dans un `data.table` que dans un `data.frame`:

- \pause il n'y a pas à répéter le nom du `data.frame` dans `[`;

- \pause il est possible d'indexer un `data.table` par une ou plusieurs \og clés \fg{} permettant une recherche souvent plus rapide.

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
  ##  base 41.71417 43.65880 54.29650 49.23702 50.10314
  ##   dt1 10.80914 11.26147 12.90479 11.45061 11.97763
  ##   dt2 10.46219 10.81319 13.99015 11.03693 11.68497
  ##        max neval
  ##  218.69998   100
  ##   21.21712   100
  ##  179.24473   100
```

<!-- summary(microbenchmark(times = 10L -->
<!--   , base = flights[flights$origin == "JFK",] -->
<!--   , dt1 = flights_DT[origin == "JFK"] -->
<!--   , dt2 = flights_DT[list("JFK")] -->
<!-- ))[, c("expr", "lq", "mean", "uq")] -->


### Calculer des statistiques avec `j`

L'argument `j` permet de calculer des statistiques agrégées. 

\pause \small


```r
flights_DT[, j = list(
  distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
)]
  ##    distance_moyenne retard_max
  ## 1:         1039.913       1272
```

\pause \normalsize 

Utilisé avec `:=` il permet de les refusionner automatiquement avec les données d'origine. 

\pause \small


```r
flights_DT <- flights_DT[, j := list(
  distance_moyenne = mean(distance)
  , retard_max = max(arr_delay, na.rm = TRUE)
)]
```

### Ventiler des traitements avec `by` et `keyby`

L'argument `by` de `[` ventile tous les traitements renseignés dans `j` selon les modalités d'une ou plusieurs variables.

\pause 

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

\pause \intertitre{Remarque} Par défaut, `by` ordonne les résultats dans l'ordre des groupes dans le `data.table`. `keyby` trie les données selon la variable d'agrégation (comme `group_by` de `dplyr`).

### Chaîner les opérations dans un `data.table`

Il est très facile de chaîner les opérations sur un `data.table` en enchaînant les `[`. 

\pause 

```r
flights_DT[
  , j = list(
    retard_arrivee = mean(arr_delay, na.rm = TRUE)
    , retard_depart = mean(dep_delay, na.rm = TRUE)
  )
  , keyby = list(year, month, day)
][retard_arrivee > 30 | retard_depart > 30]
```

\pause \intertitre{Remarque} Ces chaînages sont possibles avec  un `data.table` mais pas avec un `data.frame`. 

  
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

\pause \vspace{-5mm}


```
  ##         expr       lq     mean       uq
  ## 1       base 37.32276 42.05503 45.62500
  ## 2      dplyr 53.90310 55.07001 56.11389
  ## 3 data.table 20.57499 21.56300 20.91101
```

\pause \normalsize

\intertitre{Pour en savoir plus} Cette discussion sur [\underline{stackoverflow.com}](http://stackoverflow.com/questions/21435339/data-table-vs-dplyr-can-one-do-something-well-the-other-cant-or-does-poorly) (notamment entre les auteurs des *packages*) aborde les avantages et les inconvénients de `dplyr` et `data.table`. 

### Parenthèse : lire et écrire rapidement des fichiers plats avec data.table

Le *package* data.table fournit par ailleurs deux fonctions extrêmement utiles en pratique pour \intertitre{lire et écrire} des fichiers plats (`.csv`, `.txt`, `.dlm`): 

- \pause `fread()` : beaucoup plus rapide et plus ergonomique que `read.table()` et ses alias (`read.csv()`, `read.delim()`), produit directement un `data.table` ;
- \pause `fwrite()` : beaucoup plus rapide que `write.table()`.

\footnotesize \pause

```r
# Lecture avec fread()
mon_fichier <- fread(file = "mon_fichier.csv", sep = ",")

# Ecriture avec fwrite()
fwrite(mon_fichier, file = "mon_fichier.txt", sep = "\t")
```

## Aller plus loin avec R

### Les limites du logiciel

Les outils présentés jusqu'à présent correspondent à une utilisation \og classique \fg{} de R : production d'une enquête, redressements, études.

\ 

\pause Il arrive néanmoins que certains traitements soient rendus **difficiles par les caractéristiques du logiciel** :

- travail sur des volumes de données impossibles à loger en mémoire;
- temps de calcul trop longs et impossibles à réduire.

\ 

\pause Dans ce genre de situations, la solution consiste en général à utiliser R comme une **interface** vers des techniques ou langages susceptibles de répondre au problème posé. 


<!-- ### \large Travailler sur des données *out-of-memory* -->

<!-- Les *packages* `ff` et `ffbase` permettent de travailler sur des objets directement stockés sur le disque dur de l'ordinateur. -->

<!-- \footnotesize -->
<!-- ```{r, eval = FALSE} -->
<!-- library(ff) -->
<!-- library(ffbase) -->

<!-- # Lecture d'un fichier .csv important (RP) -->
<!-- ffdf <- read.csv2.ffdf( -->
<!--   file = "FD_INDREGZA_2013.txt" -->
<!--   , VERBOSE = TRUE -->
<!-- ) -->

<!-- # Calculs simples sur l'objet ffdf -->
<!-- table(ffdf$REGION) -->
<!-- ``` -->

<!-- \normalsize -->

<!-- \intertitre{Remarque} Ces *packages* n'ont pas connu d'évolutions depuis plusieurs années. -->

### \large Se connecter à des bases de données 

Une autre solution pour exploiter de grands volumes de données dans R est de l'utiliser pour **interroger des bases de données**, *via* par exemple le *package* `RPostgreSQL`. 

\pause \footnotesize

```r
library(RPostgreSQL)

# Connexion à la base de données maBdd
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname = "maBdd"
  , host = "localhost", port = 5432
  , user = "utilisateur", password = "motDePasse"
)

# Requête SQL sur la table maTable
dbGetQuery(con, "SELECT COUNT(*) FROM maTable")
```

\normalsize

\pause \intertitre{Remarque} Différents *packages* permettent de se connecter à différents types de base de données : `RMySQl` pour MySQL, etc.

### \large Se connecter à des bases de données avec `dplyr`

`dplyr` a la particularité de pouvoir fonctionner de façon totalement transparente sur des bases de données de différents types. 

\pause \footnotesize

```r
library(dplyr)

# Connexion à la base de données maBdd
con <- src_postgres(
  dbname = "maBdd", host = "localhost", port = 5432
  , user = "utilisateur", password = "motDePasse"
)

# Requête SQL sur la table maTable...
tbl(con, "SELECT COUNT(*) FROM maTable")

# ... ou utilisation des verbes de dplyr
tbl(con) %>% summarise(n())
```



<!-- R est un langage de haut niveau : sa simplicité d'utilisation se paie par un coût en termes de performances ou de mémoire.  -->

<!-- Il arrive ainsi que les contraintes physiques (mémoire installée ou temps disponible) interdisent de réaliser certaines opérations avec base R ou d'autres *packages*.  -->

<!-- **Exemples** Traitement de volumes de données conséquents quand la mémoire est insuffisante, algorithme séquentiel complexe. -->

<!-- Pour faire face à ce genre de situations, R propose des interfaces vers d'autres langages ou d'autres systèmes de traitements de données.  -->

### \large Paralléliser des traitements avec `parallel` (1)

La plupart des ordinateurs possèdent aujourd'hui plusieurs c\oe urs (*core*) susceptibles de mener des traitements **en parallèle** (8 sur chaque serveur d'AUS par exemple). 

\pause Par défaut, R n'expoite qu'un seul c\oe ur : le *package* `parallel` (mais aussi les *packages* `snow` ou `foreach` par exemple) permettent de **paralléliser des structures du type `*apply`**.

\pause Ce type d'opérations est composé de plusieurs étapes : 

1. \pause Création et paramétrage du \og \textit{cluster} \fg{} de c\oe urs à utiliser (chargement des fonctions et *packages* nécessaires sur chaque c\oe ur);
2. \pause Lancement du traitement parallélisé avec `parLapply()`;
3. \pause Arrêt des processus du *cluster* avec `stopCluster()`.

### \large Paralléliser des traitements avec `parallel` (2)

Dans cet exemple, on cherche à appliquer la fonction `f` à chaque matrice de la liste `l`. 

\pause \footnotesize

```r
library(MASS)
f <- function(x) rowSums(ginv(x))
l <- lapply(1:100, function(x) matrix(runif(1e4), ncol = 1e2))

# Création et paramétrage du cluster
library(parallel)
cl <- makeCluster(4)
clusterEvalQ(cl, library(MASS))
clusterExport(cl, "f")

# Lancement du calcul parallélisé
parLapply(cl, l, f)

# Arrêt des processus du cluster
stopCluster(cl)
```

### \large Paralléliser des traitements avec `parallel` (3)



\pause 


```r
microbenchmark(times = 10
  , lapply(l, f)
  , parLapply(cl, l, f)
)
  ## Unit: milliseconds
  ##                 expr      min       lq     mean
  ##         lapply(l, f) 640.6186 641.2107 645.5821
  ##  parLapply(cl, l, f) 336.0838 383.6429 400.1393
  ##    median       uq      max neval
  ##  641.8607 651.6407 659.1777    10
  ##  403.8412 424.5455 431.9449    10
```

\pause 



### `Rcpp` : un package R pour utiliser C++ (1)

Le *package* `Rcpp` permet d'intégrer facilement des fonctions codées en C++ dans un programme R. 

\pause \footnotesize


```r
library(Rcpp)
cppFunction('int add(int x, int y) {
  int result = x + y;
  return result;
}')

add(1, 2)
  ## [1] 3
```

\pause \normalsize

\intertitre{Remarque} Il est également possible de soumettre un fichier contenant des fonctions C++ écrit par ailleurs à l'aide de la fonction `sourceCpp()`. 

\pause 
\intertitre{Pour en savoir plus} [\underline{\textit{Advanced R}}](http://adv-r.had.co.nz/Rcpp.html)

### `Rcpp` : un package R pour utiliser C++ (2)

Contrairement à R, C++ est un langage de bas niveau : les boucles y sont en particulier extrêmement rapides. 

\pause \intertitre{Exemple} Somme cumulée par colonne 

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

# Les deux fonctions produisent les mêmes résultats...
x <- matrix(rnorm(1e6), ncol = 1e2)
all.equal(cumColSumsR(x), cumColSumsC(x))
  ## [1] TRUE

# ... mais cumColSumsC() est beaucoup plus rapide !
summary(microbenchmark(times = 10
  , cumColSumsR(x)
  , cumColSumsC(x)
))[, c("expr", "lq", "mean", "uq")]
  ##             expr        lq      mean        uq
  ## 1 cumColSumsR(x) 19.506836 38.770332 25.321596
  ## 2 cumColSumsC(x)  4.416819  5.062526  5.752609
```





# Réaliser des graphiques avec R

\subsection*{Réaliser des graphiques avec R}

### R et la réalisation de graphiques

La réalisation de graphiques dans un logiciel statistique est une opération souvent longue et complexe. 

Dans la plupart des cas, l'ajustement fin des paramètres par le biais de lignes de code relève de la gageure. 

\pause R dispose néanmoins de plusieurs caractéristiques qui facilitent la réalisation de graphiques : 

- **souplesse** : la très grande variété des types d'objets simplifie les paramétrages ;
- **rigueur** : la dimension fonctionnelle du langage aide à systématiser l'utilisation des paramètres graphiques ;
- **adaptabilité** : la liberté de développement de modules complémentaires rend possible de profondes innovations dans la conception des graphiques. 

### Base R ou `ggplot2` ? 

Il existe aujourd'hui troix principaux paradigmes pour produire des graphiques avec R : 

- les fonctionnalités de base du logiciel du *package* `graphics`;

- les fonctionnalités plus élaborées des *packages* `grid` et `lattice` (non-abordées dans cette formation);

- la \og grammaire des graphiques \fg{} du *package* `ggplot2`.

\bigskip 

\underline{Plan de la partie}

\bigskip

\tableofcontents[currentsection, sectionstyle = hide, subsectionstyle = show/show/hide]


### Données d'exemple : table `mpg` de `ggplot2`

\small

La plupart des exemples de cette partie sont produits à partir de la table `mpg` du *package* `ggplot2`.

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

- `displ` : cylindrée;
- `drv` : transmission (`f` traction, `r` propulsion, `4` quatre roues motrices);
- `cty` et `hwy` :  nombre de *miles* parcourus par *gallon* d'essence en ville et sur autoroute respectivement.


## Réaliser des graphiques avec `graphics`

### \large Beaucoup de fonctions, des paramètres communs

La création de graphiques avec le *package* de base `graphics` s'appuie sur la **fonction `plot()`** ainsi que sur des **fonctions spécifiques** : 

- `plot(hist(x))`, `plot(density(x))` : histogrammes et densités;
- `plot(ts)` : représentation de séries chronologiques;
- `plot(x, y)` : nuages de points;
- `barplot(table(x))` et `pie(table(x))` : diagrammes en bâtons et circulaires.

\pause Si ce n'est quelques **arguments spécifiques**, ces fonctions partagent un ensemble de **paramètres graphiques communs**. 

\pause 

\intertitre{Pour en savoir plus} Le site [\underline{statmethods.net}](http://www.statmethods.net/graphs/) recense et illustre la plupart des fonctions du *package* `graphics`.

### Histogrammes et densités

Les fonctions `histogram()` et `density()` calculent les statistiques ensuite utilisées par la fonction `plot()` pour construire les graphiques. 

\pause Arguments spécifiques à `hist()` : 
\vspace{-0.3cm}

- `breaks` : méthode pour déterminer les limites des classes;
- `labels = TRUE` : ajoute l'effectif de chaque classe.

\pause Arguments spécifiques à `density()` : 
\vspace{-0.3cm}

- `bw` : largeur de la fenêtre utilisée par la fonction de lissage;
- `kernel` : fonction de lissage utilisée.

\pause

\intertitre{Remarque} L'argument `plot` de la fonction `hist()` (`TRUE` par défaut) affiche automatiquement un graphique, sans avoir à appeler explicitement la fonction `plot()`.

### Histogrammes et densités

\centering \footnotesize

```r
hist(mpg$hwy, breaks = seq(10, 44, by = 2), 
     col = "lightblue", labels = TRUE)
```


\includegraphics[height=7cm]{presentation_files/figure-beamer/unnamed-chunk-84-1} 

### Histogrammes et densités

\centering \footnotesize

```r
plot(density(mpg$hwy, bw = 0.5, kernel = "gaussian"))
```


\includegraphics[height=7cm]{presentation_files/figure-beamer/unnamed-chunk-85-1} 

### Séries chronologiques avec `plot(ts)`

\centering \footnotesize


```r
class(AirPassengers)
  ## [1] "ts"
plot(AirPassengers)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-86-1} 

### Nuages de points avec `plot(x, y)`

\centering \footnotesize


```r
plot(mpg$displ, mpg$hwy)
```


\includegraphics[height=6.5cm]{presentation_files/figure-beamer/unnamed-chunk-87-1} 

### Diagrammes en bâtons et circulaires

La fonction `table()` permet de calculer les statistiques utilisées ensuite par `barplot()` et `pie()` pour construire les graphiques.

\pause Arguments spécifiques à `barplot()` : 
\vspace{-3mm}

- `horiz` : construit le graphique horizontalement;
- `names.arg` : nom à afficher près des barres.

\pause Arguments spécifiques à `pie()` : 
\vspace{-3mm}

- `labels` : noms à afficher à côté des portions de disque; 
- `clockwise` : sens dans lequel sont représentées les modalités;
- `init.angle` : point de départ en degrés.

\pause

\intertitre{Remarque} Quand `barplot()` est appliqué à un tri croisé, la couleur des barres varie et les paramètres deviennent utiles : 
\vspace{-3mm}

- `beside` : position des barres;
- `legend.text` : ajoute une légende avec le texte indiqué.


### Diagrammes en bâtons et circulaires

\centering \footnotesize


```r
uni <- table(mpg$drv)
lab <- c("4 roues", "Traction", "Propulsion")
barplot(uni, names.arg = lab)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-88-1} 

### Diagrammes en bâtons et circulaires

\centering \footnotesize


```r
pie(uni, labels = paste0(lab, "\n", uni)
    , init.angle = 90, clockwise = TRUE)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-89-1} 

### Diagrammes en bâtons et circulaires

\centering \footnotesize


```r
bi <- table(mpg$drv, mpg$year)
barplot(bi, horiz = TRUE, beside = TRUE, legend.text = lab)
```


\includegraphics[height=6cm]{presentation_files/figure-beamer/unnamed-chunk-90-1} 

### Couleur, forme et taille des objets

Plusieurs paramètres permettent de modifier la couleur, la forme ou la taille des éléments qui composent un graphique: 

- \pause `pch` : entier ou caractère spécial indiquant la forme des points à représenter. 

![](presentation_files/figure-beamer/unnamed-chunk-91-1.pdf)<!-- --> 

- \pause `col` : valeur indiquant la couleur du contour des formes utilisées. Peut être un entier (recyclé au-delà de 8), un nom ou un code RGB hexadécimal (du type `"#FF1111"`).
\small  

![](presentation_files/figure-beamer/unnamed-chunk-92-1.pdf)<!-- --> 

Pour certaines formes (`pch` entre 21 et 25), il est également possible de modifier la couleur de remplissage avec `bg`. 

### Couleur, forme et taille des objets

\intertitre{Remarque} : la palette de couleurs accessibles en utilisant des entiers est réduite. Il est possible de l'étendre considérablement *via* la fonction `colors()`. 

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
- `cex` : utilisé dans une fonction `plot()`, `cex` permet d'ajuster la taille des points qui le composent. 

![](presentation_files/figure-beamer/unnamed-chunk-94-1.pdf)<!-- --> 

### Couleur, forme et taille des objets

La fonction `legend()` permet d'ajouter une légende. 
\footnotesize \center

\pause \vspace{-0.4cm}

```r
t <- factor(mpg$drv
  , labels = c("4 roues", "Traction", "Propulsion"))
plot(mpg$displ, mpg$hwy, pch = 21, col = t, bg = t)
legend("topright", legend = unique(t), pch = 21
  , col = unique(t), pt.bg = unique(t))
```

![](presentation_files/figure-beamer/unnamed-chunk-95-1.pdf)<!-- --> 

### Titres, texte et axes

Les titres sont paramétrés à l'aide des fonctions suivantes : 

\vspace{-0.3cm}

- `main` pour ajouter le titre principal;
- `xlab` et `ylab` pour ajouter des titres aux axes.

\pause La fonction `text()` permet d'ajouter du texte sur le graphique en le positionnant par ses coordonnées, éventuellement avec un décalage (pour nommer des points par exemple). 
\pause Il est également possible de paramétrer les axes :

\vspace{-0.3cm}

- `xlim` et `ylim` spécifient les valeurs minimales et maximales de chaque axe;
- `axis()` est une fonction qui permet d'ajouter un axe personnalisé. 

\pause 

\intertitre{Remarque} Pour produire un graphique sans axe et les rajouter après, utiliser l'option `axes = FALSE` de la fonction `plot()`. 

### Combinaison de plusieurs graphiques

Par défaut l'utilisation de la fonction `plot()` produit un nouveau graphique. 

\pause Pour superposer différents graphiques, le plus simple est de commencer par une instruction `plot()` puis de la compléter : 

- avec `points()` pour ajouter des points;
- avec `lines()` pour ajouter des lignes;
- avec `abline()` pour ajouter des lignes d'après une équation;
- avec `curve()` pour ajouter des courbes d'après une équation. 

\pause 

\intertitre{Exemple} Ajout d'une droite de régression au graphique de `hwy` par `displ`. 

### Combinaison de plusieurs graphiques

\footnotesize


```r
reg <- lm(hwy ~ displ, data = mpg)
plot(mpg$displ, mpg$hwy)
abline(a = reg$coefficients[1], b = reg$coefficients[2])
```

![](presentation_files/figure-beamer/unnamed-chunk-96-1.pdf)<!-- --> 


### Paramètres généraux et disposition (1)

Utilisée en dehors de la fonction `plot()`, la fonction `par()` permet de définir l'ensemble des paramètres graphiques globaux. 

\pause Ses mots-clés les plus importants sont : 

- `mfrow` : permet de disposer plusieurs graphiques côte-à-côte. 
    
    ```r
    par(mfrow = c(1, 2)) # 1 ligne et 2 colonnes
    par(mfrow = c(3, 2)) # 3 lignes et 2 colonnes
    par(mfrow = c(1, 1)) # 1 ligne et 1 colonne
    ```
- `cex` :  coefficient multiplicatif pour modifier la taille de l'ensemble des textes et symboles utilisés dans les graphiques (1 par défaut). 

\pause 

**Pour en savoir plus** La [page d'aide](http://stat.ethz.ch/R-manual/R-devel/library/graphics/html/par.html) de la fonction `par()` détaille toutes ces options. 


### Paramètres généraux et disposition (2)


```r
par(mfrow = c(1, 2))
plot(mpg$displ, mpg$hwy)
plot(AirPassengers)
```

![](presentation_files/figure-beamer/unnamed-chunk-98-1.pdf)<!-- --> 



### Exportation

Pour exporter des graphiques depuis R, la démarche consiste à rediriger le flux de production du graphique vers un fichier à l'aide d'une fonction du *package* `grDevices`. Par exemple : 

\pause 

```r
png("monGraphique.png", width = 10, height = 8
    , unit = "cm", res = 600)
plot(mpg$displ, mpg$hwy)
dev.off()
```

\pause Dans ce contexte, les fonctions les plus utiles sont : `png()`, `jpeg()` et `pdf()`. En particulier, `pdf()` permet de conserver le caractère vectoriel des graphiques produits par R.

\pause 

\intertitre{Remarque} Les graphiques peuvent également facilement être exportés depuis RStudio en utilisant les menus prévus à cet effet. 

## Réaliser des graphiques avec \protect\texttt{ggplot2}

### \large L'implémentation d'une grammaire des graphiques

Le *package* `graphics` permet de réaliser une grande quantité de graphiques mais présente deux limites importantes : 

- les fonctions qui le composent forment une casuistique complexe;
- il n'est pas possible d'inventer de nouvelles représentations à partir des fonctions existantes.

\pause Ce sont ces limites que tente de dépasser le *package* `ggplot2` en implémentant une **grammaire des graphiques**.

Comme les éléments du langage, les **composants élémentaires** d'un graphique doivent pouvoir être **réassemblés** pour produire de **nouvelles représentations.**

\pause 

\intertitre{Pour aller plus loin} \textsc{Wilkinson L.} (2005) \textit{The Grammar of Graphics}, Springer,  [\underline{ggplot2: elegant graphics for data analysis}](https://github.com/hadley/ggplot2-book)

### \large Les trois composants essentiels d'un graphique

La construction d'un graphique avec `ggplot2` fait intervenir trois composants essentiels (d'après Wickham, *ibid.*, 2.3) : 

- le `data.frame` dans lequel sont stockées les données à représenter ;
- des correspondances esthétiques (*aesthetic mappings*) entre des variables et des propriétés visuelles; 
- au moins une couche (*layer*) décrivant comment représenter les observations.

\pause 

\intertitre{Exemple} *Miles per gallon* sur l'autoroute en fonction de la cylindrée.

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


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-102-1} 

### \large Rappel : le même graphique avec base R

\centering \footnotesize


```r
plot(mpg$displ, mpg$hwy)
```


\includegraphics[height=6.5cm]{presentation_files/figure-beamer/unnamed-chunk-103-1} 


### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des éléments représentés en fonction de données, il suffit d'\textbf{associer une variable à l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

\textcolor{white}{Selon le type des variables utilisées pour les correspondances esthétiques, \textbf{les échelles sont continues ou discrètes}.}

\textcolor{white}{Quand la même variable est utilisée dans plusieurs correspondances esthétiques, \textbf{les échelles qui lui correspondent sont fusionnées}.}

\textcolor{white}{Au-delà des correspondances esthétiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut être ajusté directement dans la fonction \texttt{geom\_*}}.}


### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = cyl, shape = drv)) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-104-1} 

### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des éléments représentés en fonction de données, il suffit d'\textbf{associer une variable à l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

Selon le type des variables utilisées pour les correspondances esthétiques, \textbf{les échelles sont continues ou discrètes}. 

\textcolor{white}{Quand la même variable est utilisée dans plusieurs correspondances esthétiques, \textbf{les échelles qui lui correspondent sont fusionnées}.}

\textcolor{white}{Au-delà des correspondances esthétiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut être ajusté directement dans la fonction \texttt{geom\_*}}.}

### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = as.factor(cyl)
  , shape = drv)) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-105-1} 

### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des éléments représentés en fonction de données, il suffit d'\textbf{associer une variable à l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

Selon le type des variables utilisées pour les correspondances esthétiques, \textbf{les échelles sont continues ou discrètes}. 

Quand la même variable est utilisée dans plusieurs correspondances esthétiques, \textbf{les échelles qui lui correspondent sont fusionnées}. 

\textcolor{white}{Au-delà des correspondances esthétiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut être ajusté directement dans la fonction \texttt{geom\_*}}.}

### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = as.factor(cyl)
  , shape = as.factor(cyl))) +
  geom_point()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-106-1} 


### Couleur, forme et taille des objets

Pour faire varier l'aspect visuel des éléments représentés en fonction de données, il suffit d'\textbf{associer une variable à l'attribut de couleur, de taille ou de forme} dans la fonction \texttt{aes()}.

Selon le type des variables utilisées pour les correspondances esthétiques, \textbf{les échelles sont continues ou discrètes}. 

Quand la même variable est utilisée dans plusieurs correspondances esthétiques, \textbf{les échelles qui lui correspondent sont fusionnées}. 

Au-delà des correspondances esthétiques dans la fonction \texttt{aes()}, \textbf{l'aspect visuel peut être ajusté directement dans la fonction \texttt{geom\_*}}.

### Couleur, forme et taille des objets

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point(colour = "red", size = 8, alpha = 0.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-107-1} 

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


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-108-1} 

### Combinaison de plusieurs graphiques

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-109-1} 

### Combinaison de plusieurs graphiques

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy, colour = drv)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-110-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

La construction d'un graphique dans `ggplot2` repose sur la superposition de couches (*layer*) **conçues indépendamment** mais **réconciliées en fin d'opération**. 

\pause Chaque couche est composée de cinq éléments : 

- un `data.frame` (`data`);
- une ou plusieurs correspondances esthétiques (`mapping`);
- une transformation statistique (`stat`);
- un objet géométrique (`geom`);
- un paramètre d'ajustement de la position (`position`). 

C'est la **fonction `layer()`** qui articule ces cinq éléments. 

\pause 

**Les fonctions `geom_*` vues précédemment sont des appels pré-paramétrées de `layer()`**.

<!-- ### \large Le fonctionnement en \og couches \fg{} de `ggplot2` -->

<!-- Un graphique à une couche :  -->

<!-- \footnotesize \vspace{-1mm} -->

<!-- ```{r, eval = FALSE} -->
<!-- ggplot() +  -->
<!--   layer( -->
<!--     data = mpg, mapping = aes(displ, hwy) -->
<!--     , stat = "identity", geom = "point", position = "identity" -->
<!--   ) -->
<!-- ``` -->


### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

*Un graphique à une couche*

\footnotesize \centering


```r
ggplot() + layer(
  data = mpg, mapping = aes(displ, hwy), stat = "identity"
  , geom = "point", position = "identity"
)
```


\includegraphics[width=0.8\linewidth]{presentation_files/figure-beamer/unnamed-chunk-111-1} 


<!-- ### \large Le fonctionnement en \og couches \fg{} de `ggplot2` -->

<!-- Un graphique à une couche :  -->

<!-- \footnotesize \vspace{-1mm} -->

<!-- ```{r, eval = FALSE} -->
<!-- ggplot() +  -->
<!--   layer( -->
<!--     data = mpg, mapping = aes(displ, hwy) -->
<!--     , stat = "identity", geom = "point", position = "identity" -->
<!--   ) -->
<!-- ``` -->

<!-- \normalsize \vspace{-3mm} -->

<!-- Un graphique à deux couches :  -->

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

*Un graphique à deux couches*

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

*Un graphique à deux couches*

\centering


\includegraphics[width=1\linewidth]{presentation_files/figure-beamer/unnamed-chunk-113-1} 

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

*Remplacement de `layer()` par des alias pré-paramétrés*

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

À chaque fonction `geom_*()` est assocée un paramètre `stat` par défaut, et à chaque fonction `stat_*()` un `geom` par défaut.

\footnotesize \center


```r
ggplot(data = mpg, mapping = aes(displ, hwy)) + 
  geom_point(colour = "red", aes(size = cyl)) + 
  stat_smooth(geom = "point", method = "lm", se = FALSE
    , colour = "blue", shape = 2)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-117-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(colour = drv)) + 
  stat_smooth(method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-118-1} 

### \large Le fonctionnement en \og couches \fg{} de `ggplot2`

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(shape = drv), colour = "red") + 
  stat_smooth(aes(colour = class), method = "lm", se = FALSE)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-119-1} 


### Histogrammes et densités

\footnotesize \center

\vspace{-0.3cm}

```r
ggplot(mpg, aes(hwy)) + geom_histogram()
```


\includegraphics[width=0.8\linewidth]{presentation_files/figure-beamer/unnamed-chunk-120-1} 

\pause \raggedright \small \vspace{-0.3cm}

\intertitre{Remarque} Le positionnement des classes des histogrammes semble perturbé dans les dernières versions de `ggplot2` : le paramètre `boundary` permet de corriger ce problème (*cf.* [\underline{cette discussion}](http://stackoverflow.com/questions/37876096/geom-histogram-wrong-bins)).

### Histogrammes et densités

\footnotesize \center


```r
ggplot(mpg, aes(hwy, colour = drv, fill = drv)) + 
  geom_histogram()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-121-1} 

### Histogrammes et densités

\footnotesize \center


```r
ggplot(mpg, aes(hwy)) + geom_density(bw = 0.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-122-1} 

### Histogrammes et densités

\footnotesize \center


```r
ggplot(mpg, aes(hwy, colour = drv, fill = drv)) + 
  geom_density(bw = 0.5, alpha = 0.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-123-1} 

### Séries temporelles

\footnotesize \center


```r
ggplot(economics, aes(date, unemploy / pop)) +
  geom_line()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-124-1} 

### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(drv, colour = drv, fill = drv)) + 
  geom_bar()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-125-1} 

### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
library(scales)
ggplot(mpg, aes(drv, fill = drv)) + 
  geom_bar(aes(y = (..count..)/sum(..count..))) +
  scale_y_continuous(labels=percent) +
  scale_fill_brewer(palette="Blues")
```


\includegraphics[width=0.7\linewidth]{presentation_files/figure-beamer/unnamed-chunk-126-1} 

### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
g <- ggplot(mpg, aes(x = "", fill = drv, colour = drv)) + 
  geom_bar(width = 1)
g
```


\includegraphics[width=0.75\linewidth]{presentation_files/figure-beamer/unnamed-chunk-127-1} 


### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
g + coord_polar(theta = "y") + theme_minimal() +
  scale_fill_grey() + scale_colour_grey()
```


\includegraphics[width=0.5\linewidth]{presentation_files/figure-beamer/unnamed-chunk-128-1} 


\pause \raggedright \small

\intertitre{Pour aller plus loin} Une page du site [\underline{sthda.com}](http://www.sthda.com/french/wiki/ggplot2-graphique-en-camembert-guide-de-demarrage-rapide-logiciel-r-et-visualisation-de-donnees) explique (en français) comment produire un diagramme circulaire complet avec `ggplot2`.

### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(drv, fill = as.factor(year))) + 
  geom_bar()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-129-1} 


### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(drv, fill = as.factor(year))) + 
  geom_bar(position = "fill")
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-130-1} 

### Diagrammes en bâtons et circulaires

\footnotesize \center


```r
ggplot(mpg, aes(as.factor(year), fill = drv)) + 
  geom_bar(position = "dodge") + 
  coord_flip()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-131-1} 


### Boîtes à moustaches et assimilés

\footnotesize \center


```r
ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_boxplot(coef = 1.5)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-132-1} 

### Boîtes à moustaches et assimilés

\footnotesize \center


```r
ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_jitter()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-133-1} 

### Boîtes à moustaches et assimilés

\footnotesize \center


```r
ggplot(mpg, aes(x = drv, y = hwy)) + 
  geom_violin()
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-134-1} 

### Titres et axes

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) + geom_point() + 
  ggtitle("Mon titre avec un retour \nà la ligne") +
  xlab("Cylindrée") + ylab("Miles per gallon") +
  coord_cartesian(xlim = c(0,10), ylim = c(0, 100))
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-135-1} 



### Disposition : le *facetting*

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE) + 
  facet_wrap(~manufacturer, nrow = 3)
```


\includegraphics[width=0.9\linewidth]{presentation_files/figure-beamer/unnamed-chunk-136-1} 

### Disposition : le *facetting*

\footnotesize \center


```r
ggplot(mpg, aes(displ, hwy)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE) + 
  facet_grid(drv~class)
```


\includegraphics[width=1\linewidth]{presentation_files/figure-beamer/unnamed-chunk-137-1} 

### Sauvegarde et exportation

Le résultat de la fonction `ggplot()` pouvant être stocké dans un objet R, il est possible de le sauvegarder tel quel avec `save()` ou `saveRDS()` et de le réutiliser par la suite dans R.

```r
g <- ggplot(mpg, aes(displ, hwy)) + geom_point()
saveRDS(g, file = "g.rds")
```

\pause La fonction `ggsave()` simplifie l'export de graphiques en dehors de R. Par défaut, elle sauvegarde le dernier graphique produit.

```r
g + geom_smooth(method = "lm", se = FALSE)
ggsave("monGraphique.pdf")
ggsave("monGraphique.png")
```

<!-- ## Retour sur la grammaire des graphiques de \protect\texttt{ggplot2} -->

<!-- ### Principe de la construction d'un graphique -->

<!-- ### Une construction en plusieurs couches -->

<!-- ### Construire un graphique étape par étape (1) -->

<!-- ### Construire un graphique étape par étape (2) -->

<!-- ### Construire un graphique étape par étape (3) -->

<!-- ### Utiliser les alias `geom_*` et `stat_*` -->

<!-- ### Fixer la valeur d'un attribut visuel -->

<!-- ### Faire varier les échelles -->

<!-- ## Faire des cartes avec R -->

<!-- ### Importer des coordonnées géographiques (1) -->

<!-- ### Importer des coordonnées géographiques (2) -->

<!-- ### Faire des cartes avec base R (1) -->

<!-- ### Faire des cartes avec base R (2) -->

<!-- ### Faire des cartes avec base R (3) -->

<!-- ### Faire des cartes avec `ggplot2` (1) -->

<!-- ### Faire des cartes avec `ggplot2` (2) -->

<!-- ### Faire des cartes avec `ggplot2` (3) -->





# Générer automatiquement des documents depuis R

\subsection*{Générer automatiquement des documents depuis R}

### \large Pourquoi générer automatiquement des documents ?

- Exporter et documenter des **traitements** en vue d'une réutilisation future : statistiques pour une étude, traitements réalisés lors d'une réunion de travail, etc.

    \vspace{0.2cm} \small 
    **Remarque** Utilisation analogue à celle permise par les instructions \textcolor{blue}{\texttt{ODS RTF}} ou \textcolor{blue}{\texttt{ODS PDF}} de SAS.

\pause \normalsize 

- Construire des **rapports complets et automatisés** pour des tâches répétitives : rapports d'utilisation, tests de la cohérence ou de la qualité de nouvelles données, etc.

\pause \vspace{0.2cm}

- Produire des publications **reproductibles** sur différents supports : notes, documentation, articles de revues, etc.


### \large Principe de la génération automatique de documents

La génération automatique de documents complets repose sur deux éléments : 

1. Articuler le code, les résultats et le commentaire dans un **même document** : garantir la cohérence et faciliter les mises à jour;

2. Formater de façon standardisée le document vers **plusieurs sorties** : `.html`, `.pdf`, `.docx`, `.odt`. 

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

### \large Etapes de la génération automatique de documents

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
\pause[9] \intertitre{Note} `rmarkdown` et `knitr` sont des *packages* R (avec plusieurs dépendances); pandoc et LaTeX sont des programmes autonomes.

### Préparer et tester l'environnement de travail

1. Travailler sous RStudio
    - RStudio facilite l'édition et la compilation de fichier `.Rmd`;
    - pandoc est embarqué par défaut dans RStudio.

\pause \bigskip 

2. Installer les *packages* nécessaires
    - installer le *package* `rmarkdown` et ses dépendances;
    - installer le *package* `knitr` et ses dépendances.

\pause \bigskip 

3. Pour produire des fichiers `.pdf`, installer LaTeX ([\underline{MiKTeX}](https://miktex.org/) sous Windows) et [\underline{s'assurer}](http://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp) que ses programmes figurent dans le *path* de Windows.

\pause \bigskip 

4. Créer un nouveau fichier R Markdown (`.Rmd`), installer les *packages* complémentaires demandés, choisir le type de document et compiler le fichier d'exemple (`Ctrl + K`).

### Ecrire du texte dans R Markdown

Pour écrire du texte dans un document R Markdown, il suffit de le **taper dans le fichier `.Rmd`** (sans le commenter ni l'échapper d'aucune manière). 

\pause Des **balises** spéciales permettent de mettre en forme le document : 

- les signes `*` et `_` permettent de mettre des mots en `*italique*` ou en `**gras**`;
- les six niveaux de titres sont préfixés par les signes `#` (premier niveau), `##` (deuxième niveau), etc.
- des listes sont automatiquement créées à partir de successions de `-` ou de séquences de nombres ou de lettres séparées par un retour à la ligne.

\pause 

\intertitre{Note} Pour une présentation synthétique de R Markdown, se référer à l'[\underline{aide-mémoire}](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) (*cheat sheet*) sur le site de RStudio.


### Ecrire du code dans R Markdown

Les blocs de code R sont intégrés dans R Markdown de la façon suivante : 

````
```{r}
2 + 2
```
````

\pause Par défaut **le code est évalué**, et **lui-même ainsi que ses résultats sont affichés** dans le document en sortie : 

```r
2 + 2
```

```
  ## [1] 4
```

### Ecrire du code dans R Markdown

Les **options** saisies en début de bloc permettent de préciser à `knitr` la manière de le prendre en compte, par exemple:

- `eval=FALSE` : le bloc n'est pas évalué;
- `echo=FALSE` : le bloc n'est pas affiché;
- `collapse=TRUE` : code et résultats sont affichés à la suite.

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

\intertitre{Note} Toutes les options de `knitr` relatives aux blocs de code (*chunk options*) sont présentées sur la [\underline{page}](http://yihui.name/knitr/options/) du créateur du *package*, Yihui Xie.

### Ecrire du code dans R Markdown

Il est également possible d'intégrer le résultat d'un traitement R dans le corps d'un paragraphe avec la syntaxe : 


```
`r   `
```

\pause 

\intertitre{Exemple} Pour intégrer dans le texte la date de compilation du document, utiliser 


```
Document compilé le `r Sys.Date()`.
```

\pause Document compilé le 2018-04-10.

### Intégrer des graphiques dans R Markdown

Tous les graphiques produits par les blocs de code sont **automatiquement intégrés au fichier final**. 

\pause Un **grand nombre d'options** sont consacrées au paramétrage des graphiques, notamment : 

- `fig.width`, `fig.height` : largeur et hauteur utilisées pour produire le graphique, en pouces;
- `fig.asp` : rapport hauteur/largeur (`fig.height` est neutralisé quand `fig.asp` est renseigné);
- `out.width`, `out.height` : largeur et hauteur du graphique dans la sortie finale;
- `fig.align` : alignement du grahique (`"left"`, `"right"` ou `"center"`);
- `dpi` (72 par défaut) : résolution (utile uniquement pour HTML).



### Intégrer des graphiques dans R Markdown

\footnotesize \center


````
```{r, fig.asp = 3/4, fig.width = 4}
plot(mpg$displ, mpg$hwy)
```
````

![](presentation_files/figure-beamer/unnamed-chunk-148-1.pdf)<!-- --> 

### Intégrer des graphiques dans R Markdown

\footnotesize \center


````
```{r, fig.asp = 3/4, fig.width = 6, out.width = "4in"}
plot(mpg$displ, mpg$hwy)
```
````


\includegraphics[width=4in]{presentation_files/figure-beamer/unnamed-chunk-150-1} 

### Intégrer des tableaux dans R Markdown

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

Les `:` permettent de spécifier l'alignement des colonnes. 

### Intégrer des tableaux dans R Markdown

En règle générale cependant, les tableaux à intégrer sont générés automatiquement à partir des données.

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

La fonction `knitr::kable()` permet de **transformer un objet R en tableau formaté pour R Markdown**.

### Intégrer des tableaux dans R Markdown

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

Ce qui donne une fois formaté par R Markdown:



drv         hwy       cty
----  ---------  --------
f      28.16038   19.9717
4      19.17476   14.3301
r      21.00000   14.0800

### Paramétrer un document R Markdown

La plupart des paramètres généraux du documents sont à indiquer dans son en-tête (désigné par l'acronyme YAML) : 

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

\intertitre{Pour en savoir plus} Le site de RStudio documente le paramétrage de l'en-tête YAML selon les formats de sortie souhaités ([\underline{\texttt{html}}](http://rmarkdown.rstudio.com/html_document_format.html), [\underline{\texttt{pdf}}](http://rmarkdown.rstudio.com/pdf_document_format.html)).

