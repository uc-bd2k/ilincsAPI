# ilincsAPI in action

This repository consists of set of examples to showcase the ways of interacting with [iLINCS](http://www.ilincs.org) API. The examples in the current folder are implemented in the Jupyter notebook usingIlincsApis.ipynb and "linked" to [Google colab](https://colab.research.google.com/github/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.ipynb).

We also include the same analysis implemented in R markdown -- implemented in the RStudio notebook [usingIlincsApis.Rmd](https://github.com/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.Rmd) and the "knitted" html output of the notebook is provided in [usingIlincsApis.html](http://htmlpreview.github.io/?https://github.com/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.html).

Additional R markdown examples are included in subfolders:

* [useCases](useCases) - use cases related to the manuscript
* [qc](qc) - QC code

## Get started

To execute the code in the jupyter notebook, please click on the [Google colab](https://colab.research.google.com/github/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.ipynb) and execute code "chunks".

## R Markdown

See the same example implemented in R Markdown [usingIlincsApis.Rmd](https://github.com/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.Rmd)

The output is included [HTML](http://htmlpreview.github.io/?https://github.com/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.html) / [PDF](https://github.com/uc-bd2k/ilincsAPI/blob/master/usingIlincsApis.pdf)

### R Markdown Prerequisites

To execute the code in the useCase notebooks, please install RStudio, launch RStudio and install following R packages: knitr, tinytex, httr, jsonlite, htmltools, data.table and Biobase. 

```R
install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools","data.table"),repos = "http://cran.us.r-project.org")
if (!require("BiocManager", quietly = TRUE))  install.packages("BiocManager",repos = "http://cran.us.r-project.org"); BiocManager::install("Biobase")
```

Or from shell:
```sh
R -e 'install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools","data.table"),repos = "http://cran.us.r-project.org")'
R -e 'if (!require("BiocManager", quietly = TRUE))  install.packages("BiocManager",repos = "http://cran.us.r-project.org"); BiocManager::install("Biobase")'
```


### Render in RStudio

After installing the prerequisites and loading Rmd file into RStudio click on "Knit" to create a PDF/HTML/Word output.

![knitting Rmd file](useCases/images/knitting.png "Knitting Rmd File")

### Render command line

It is also possible to render the usecases using the command line:

* html output:
```sh
R -e 'rmarkdown::render("usingIlincsApis.Rmd", "html_document")'
```

* pdf output:
```sh
R -e 'rmarkdown::render("usingIlincsApis.Rmd", "pdf_document")'
```


For more information about iLINCS and iLINCS API's see links below:

## [iLINCS API info page](http://www.ilincs.org/ilincs/APIinfo)

## [iLINCS API explorer](http://www.ilincs.org/ilincs/APIdocumentation)

## [iLINCS help](http://www.ilincs.org/help/)

## [iLINCS support group](http://www.ilincs.org/ilincs/support)

