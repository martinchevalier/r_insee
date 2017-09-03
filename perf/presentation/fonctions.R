.init <- function(){
  rm(list = ls())
  set.seed(1)
  library(formatR)
  library(ctv)
  library(MASS)
  library(dplyr)
  library(nycflights13)
  library(data.table)
  library(pryr)
  library(ggplot2)
  library(microbenchmark)
  library(sqldf)
  options(repos = "https://cran.rstudio.com/")
  options(width = 55)
  knitr::opts_chunk$set(comment="  ##", collapse=TRUE, tidy = FALSE)
  # , cache = TRUE, cache.path = "../.cache/"
  knitr::opts_knit$set(root.dir = "../../donnees/#output_perf")
  compiler::enableJIT(0)
  .initOK <<- TRUE 
}
.init()