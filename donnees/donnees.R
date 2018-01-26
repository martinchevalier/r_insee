
library(foreign)
library(data.table)
library(haven)

setwd("/home/mc/nc/cours/")
# setwd("D:/oc/mc/cours/")
# setwd("C:/Users/gc004y/Desktop/oc/cours")

# bpe15
bpetot <- read.dbf("#data/bpe15/bpe_ensemble.dbf", as.is = TRUE)
attr(bpetot,"data_types") <- NULL
row.names(bpetot) <- NULL
bpe <- bpetot[bpetot$depcom == "92046",]
bpe2 <- bpetot[bpetot$depcom == "92049",]

# eec12
eec12t4 <- readRDS("#data/eec12/eec12t4.rds")
eec12t4 <- eec12t4[eec12t4$EXTRI1613 != 0, c("IDENT","TRIM","NOI","REG","AGE","SEXE","CSE","DIP11","ACTEU","SALRED","STC","TAM1D","AIDREF","TPP","NBAGENF","DUHAB","PUB3FP","NAIA","EXTRI1613")]
eec12t4$EXTRI1613 <- eec12t4$EXTRI1613 * 4
set.seed(1)
eec12t4$ACTEU[sample.int(nrow(eec12t4), 124)] <- NA
eec12t3 <- readRDS("#data/eec12/eec12t3.rds")
eec12t3 <- eec12t3[eec12t3$EXTRI1613 != 0, c("IDENT","TRIM","NOI","REG","TYPMEN5","TUU","EXTRI1613")]
eec12t3$EXTRI1613 <- eec12t3$EXTRI1613 * 4

# eec15
# eec <- read.dbf("#data/eec15/eec15.dbf", as.is = TRUE)
# eec4 <- eec[eec$TRIM == "4",c("identm","ANNEE","TRIM","METRODOM","AGE5","SEXE","ACTEU","CSE","DIP11","EXTRIAN16")]
# row.names(eec4) <- NULL
# eec3 <- eec[eec$TRIM == "3",c("identm","ANNEE","TRIM","AGE3","SEXE","ACTEU","EXTRIAN16","CHPUB")]
# row.names(eec3) <- NULL

# rp13
# rp <- fread("#data/rp13/FD_INDREGZA_2013.txt")[DEPT == 92]
# rp <- data.frame(rp)[,c("DEPT","IPONDI","ANAI","SEXE","STOCD","CS1")]
# gc()


# Données sur la maturation du raisin en Saône-et-Loire
raisin <- read.csv("Insee R/donnees/INDEXLDAOenologie.csv", stringsAsFactors = FALSE)
raisin$annee <- 2000L + as.integer(substr(raisin$date, nchar(raisin$date) - 1, nchar(raisin$date)))
raisin <- raisin[raisin$annee != 2096, ]
raisin <- raisin[, setdiff(names(raisin), c("entityid", "code", "date", "indice"))]
str(raisin)



# Création des fichiers d'export
setwd("Insee R/donnees/#output")

save(bpe, rp, file = "exemples.RData")

write.csv(bpe2, file = "bpe2/bpe2.csv", row.names = FALSE)
# write.dta(bpe2, file = "bpe2/bpe2.dta")
# write.dbf(bpe2, file = "bpe2/bpe2.dbf")

write.dta(dep, file = "cog/dep.dta")

saveRDS(eec12t4, "eect4.rds")
saveRDS(eec12t3, "eect3.rds")
saveRDS(raisin, "raisin.rds")
