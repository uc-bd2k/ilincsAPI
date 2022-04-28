# ilincsQC to check the formulae and accuracy of ilincs signatures

## Prerequisites

To execute the code in the ilincsQC code notebooks, please install RStudio, launch RStudio and install following R packages: knitr, tinytex, httr, jsonlite, htmltools, enrichR. 

```R
install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools","enrichR"),repos = "http://cran.us.r-project.org")
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager",repos = "http://cran.us.r-project.org");
    
BiocManager::install(c("Biobase","ComplexHeatmap"))
```

Or from shell:
```sh
R -e 'install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools","enrichR"),repos = "http://cran.us.r-project.org")'
R -e 'if (!require("BiocManager", quietly = TRUE))  install.packages("BiocManager",repos = "http://cran.us.r-project.org"); BiocManager::install(c("Biobase","ComplexHeatmap"))'
```

## ilincs QC

* [R Markdown source](../../../blob/master/qc/usingIlincsApisExample.Rmd) 
* Output [PDF](https://github.com/uc-bd2k/ilincsAPI/blob/master/qc/usingIlincsApisExample.pdf)/[HTML](https://github.com/uc-bd2k/ilincsAPI/blob/master/qc/usingIlincsApisExample.html)
* [Related documentation](Supplemental Quality Control.pdf)


## Creating Output

After installing the prerequisites and loading Rmd file into RStudio click on "Knit" to create a PDF/HTML/Word output.

![knitting Rmd file](../useCases/images/knitting.png "Knitting Rmd File")

### Render command line

It is also possible to render the usecases using the command line:

* html output:
```sh
R -e 'rmarkdown::render("usingIlincsApisExample.Rmd", "html_document")'
```

* pdf output:
```sh
R -e 'rmarkdown::render("usingIlincsApisExample.Rmd", "pdf_document")'
```
