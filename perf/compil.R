setwd("/home/mc/Bureau/nc/cours/Insee R/perf")
rm(list = ls(all.names = TRUE))

# Presentation version beamer
rmarkdown::render("presentation/presentation.Rmd", encoding = "utf8", clean = FALSE)
file.copy("presentation/presentation.pdf", "#output/presentation_beamer.pdf", overwrite = TRUE)

# Presentation version handout
md <- readLines("presentation/presentation.utf8.md")
md <- c(md[1], "handout: yes", md[2:length(md)])
writeLines(md, "presentation/presentation.utf8.md")
rmarkdown::render("presentation/presentation.utf8.md", output_file = "presentation.pdf")
file.copy("presentation/presentation.pdf", "#output/presentation_handout.pdf", overwrite = TRUE)

# Support d'exercices
rmarkdown::render("pratique/index.Rmd", encoding = "utf8")
file.copy("pratique/index.html", "#output/index.html", overwrite = TRUE)