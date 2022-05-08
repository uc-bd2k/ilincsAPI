FROM rocker/r-base:4.2.0
# FROM r-base:4.2.0-m1

RUN apt-get update && apt-get install -y libssl-dev libcurl4-openssl-dev 
RUN apt-get install -y pandoc texlive-science lmodern texlive-latex-extra

RUN R -e 'install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools","httr","data.table"),repos = "http://cran.us.r-project.org")'
RUN R -e 'if (!require("BiocManager", quietly = TRUE))  install.packages("BiocManager",repos = "http://cran.us.r-project.org"); BiocManager::install(c("Biobase","ComplexHeatmap","enrichR"))'
RUN R -e 'install.packages(c("rmarkdown"),repos = "http://cran.us.r-project.org")'

ADD usingIlincsApis.Rmd .

RUN R -e 'rmarkdown::render("usingIlincsApis.Rmd", "html_document" )'
