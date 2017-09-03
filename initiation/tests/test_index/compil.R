setwd("/home/mc/Bureau/nc/cours/Insee R/initiation/tests/test_index")

rmarkdown::render("test.Rmd", run_pandoc = TRUE)
system("pdflatex test.tex")
system("makeindex test.idx")
system("pdflatex test.tex")
