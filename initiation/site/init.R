
#--------------------------------------------
# Variables globales
#--------------------------------------------

if(!exists(".download")) .download <- FALSE
if(!exists(".sol")) .sol <- FALSE

knitr::opts_chunk$set(comment = "  ##", collapse = TRUE, fig.path = "../figures/")
options(scipen = 10, stringsAsFactors = TRUE)
options(repos = "https://cran.rstudio.com/")


#--------------------------------------------
# Téléchargement des données et espace de travail
#--------------------------------------------

if(.download){
  file <- tempfile()
  download.file("http://r.slmc.fr/donnees.zip", file)
}else file <- "/home/mc/Bureau/nc/cours/Insee R/initiation/#output/donnees.zip"
.dir <- tempdir()
unzip(file, exdir = .dir)
knitr::opts_knit$set(root.dir = .dir)

#--------------------------------------------
# Chargement des packages
#--------------------------------------------

library(foreign)
library(haven)
library(data.table)
library(descr)
library(moments)
library(Hmisc)
library(pryr)
library(microbenchmark)

#--------------------------------------------
# Sectionnement des documents
#--------------------------------------------

.init <- function(){
  set.seed(1)
  .numHide <<- 0
  .numQuestion <<- 0
  .html <<- knitr::opts_knit$get("rmarkdown.pandoc.to") == "html"
  .pdf <<- knitr::opts_knit$get("rmarkdown.pandoc.to") == "latex"
  options(stringsAsFactors = TRUE)
}

.module <- function(numModule, text){
  .numModule <<- numModule
  if(.html) cat("\n \\ \n")
  if(.pdf){
    if(.numModule > 1) cat("\\addtocontents{cp}{\\vspace{\\normalbaselineskip}}")
    cat("\\chapter{", text, "}", sep = "")
    cat("\n \\minitoc \n")
  }
}

.partie <- function(text){
  cat("\n"); cat("\\ \n"); cat("\n");
  if(.html) cat("#", text, sep = "")
  if(.pdf) cat("##", text, "", sep = "")
}

.souspartie <- function(text){
  if(.html) cat("##", text, sep = "")
  if(.pdf) cat("###", text, sep = "")
}

#--------------------------------------------
# Fonctions outils
#--------------------------------------------

# Arrondis
.f <- function(x, digits = 2){
  formatC(as.numeric(x), format = "f", decimal.mark = ",",  big.mark = " ", digits = digits)
}

# Index de fonctions
.fun <- function(fun, bold = FALSE){
  if(.pdf) r <- paste0("\\index{\\texttt{", fun, "}", if(bold) "|textbf" else "",  "}")
  if(.html) r <- ""
  return(r)
}

# Fonction pour garantir la cohérence des références internes
# entre la version web et la version imprimée
.ref <- function(text, link_html = NULL, link_pdf = NULL){
  if(.html & !is.null(link_html)) out <- paste0("[", text, "](", link_html, ")")
  if(.html & is.null(link_html)) out <- paste0(text)
  if(.pdf & !is.null(link_pdf)) out <- paste0("[\\underline{", text, "}](", link_pdf, ")")
  if(.pdf & is.null(link_pdf)) out <- paste0("\\underline{", text, "}")
  return(out)
}


# Introduction d'un cas pratique
.question <- function(text = NULL){
  .numQuestion <<- .numQuestion + 1
  cat("\n"); cat("\\ \n"); cat("\n");
  cat("#### **Cas pratique ", .numModule, ".", .numQuestion, "** ", text, sep = "")
  if(.pdf) cat(
    "\n \\addcontentsline{cp}{caspratique}{"
    , .numModule, ".", .numQuestion, " ", text
    , "}", sep = ""
  )
  
}

# Solution d'une question
.beginsol <- function(){
  .numHide <<- .numHide + 1
  if(.html){
    cat("<div style = \"text-align: right;\">")
    cat("<button type=\"button\" onclick=\"hide('sol", .numHide, "')\">Afficher/masquer la solution</button>", sep = "")
    cat("</div>")
    cat("<div id='sol", .numHide, "' style=\"display: none; height: 0;\">\n<hr/>", sep = "")
  }
  if(.pdf) cat("\\ifsol \n \\begin{center} \\rule{0.5\\linewidth}{\\linethickness}\\end{center} \n")
}
.endsol <- function(){
  if(.html) cat("\n<hr /></div>\n\n \\ \n \n")
  if(.pdf) cat("  \n  \\begin{center} \\rule{0.5\\linewidth}{\\linethickness}\\end{center} \n \\bigskip \n \\fi \n")
}

# Indication d'une question
.indic <- function(text){
  .numHide <<- .numHide + 1
  if(.html){
    cat("<div style = \"text-align: right;\">")
    cat("<button type=\"button\" onclick=\"hide('sol", .numHide, "');this.style.display='none'\">Indication</button>", sep = "")
    cat("</div>")
    cat("<div id='sol", .numHide, "' style=\"display: none; height: 0;\">\n", sep = "")
    cat(text)
    cat("\n</div>\n\n \\ \n \n")
  }
  if(.pdf){
    cat("\\ifsol \n")
    cat(text)
    cat("\\fi \n")
  }
}

#--------------------------------------------
# Validation de l'initialisation
#--------------------------------------------

.initOK <- TRUE