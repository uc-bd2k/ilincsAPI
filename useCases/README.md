# iLincs API useCases

## Prerequisites

To execute the code in the useCase notebooks, please install RStudio, launch RStudio and install following R packages: knitr, tinytex, httr, jsonlite, htmltools, httr, data.table as well as Biobase, ComplexHeatmap and enrichR. 

```R

install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools", "httr", "data.table"),repos = "http://cran.us.r-project.org")
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager",repos = "http://cran.us.r-project.org");
    
BiocManager::install(c("Biobase", "ComplexHeatmap", "enrichR"))
```

Or from shell:
```sh
R -e 'install.packages(c("knitr", "tinytex", "httr", "jsonlite", "htmltools", "httr", "data.table"),repos = "http://cran.us.r-project.org")'
R -e 'if (!require("BiocManager", quietly = TRUE))  install.packages("BiocManager",repos = "http://cran.us.r-project.org"); BiocManager::install(c("Biobase", "ComplexHeatmap", "enrichR"))'
```

## Use Cases


|               | R Markdown source  | PDF/HTML output  | Web walkthrough |
| ------------- |:------------------:|:----------------:|:---------------:|
| <details><summary><b>&#9658;&nbsp;useCase1a</b></summary>Identifying chemical perturbagens<br>emulating genetic perturbation of MTOR protein</details>  | [useCase1a.Rmd](../../../blob/master/useCases/useCase1a.Rmd) | [PDF](https://github.com/uc-bd2k/ilincsAPI/blob/master/useCases/useCase1a.pdf) / [HTML](http://htmlpreview.github.io/?https://github.com/uc-bd2k/ilincsAPI/blob/master/useCases/useCase1a.html) | [link](http://www.ilincs.org/help/useCases/Identifying%20chemical%20perturbagens%20emulating%20genetic%20perturbation%20of%20MTOR%20protein) |
| <details><summary><b>&#9658;&nbsp;useCase1b</b></summary>Mechanism of action analysis via connection<br>to genetic perturbation signatures</details>  | [useCase1b.Rmd](../../../blob/master/useCases/useCase1b.Rmd) |   [PDF](https://github.com/uc-bd2k/ilincsAPI/blob/master/useCases/useCase1b.pdf) / [HTML](http://htmlpreview.github.io/?https://github.com/uc-bd2k/ilincsAPI/blob/master/useCases/useCase1b.html) | [link](http://www.ilincs.org/help/useCases/Mechanism%20of%20action%20analysis%20via%20connection%20to%20genetic%20perturbation%20signatures) |
| <details><summary><b>&#9658;&nbsp;useCase2</b></summary>Proteo-genomics analysis of cancer driver events<br>in breast cancer</details>  | [useCase2.Rmd](../../../blob/master/useCases/useCase2.Rmd) |   [PDF](https://github.com/uc-bd2k/ilincsAPI/blob/master/useCases/useCase2.pdf) / [HTML](http://htmlpreview.github.io/?https://github.com/uc-bd2k/ilincsAPI/blob/master/useCases/useCase2.html) | [link](http://www.ilincs.org/help/useCases/Proteo-genomics%20analysis%20of%20cancer%20driver%20events%20in%20breast%20cancer) |

## Creating Output

After installing the prerequisites and loading Rmd file into RStudio click on "Knit" to create a PDF/HTML/Word output.

![knitting Rmd file](images/knitting.png "Knitting Rmd File")

### Render command line

It is also possible to render the usecases using the command line:

* html output:
```sh
R -e 'rmarkdown::render("useCase1a.Rmd", "html_document")'
```

* pdf output:
```sh
R -e 'rmarkdown::render("useCase1a.Rmd", "pdf_document")'
```
