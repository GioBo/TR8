TR8
===

R package for downloading functional traits data for plant species


Plant ecologists often need to collect "traits" data about plant species which are
often scattered among various databases: TR8 contains a set of tools which take care of
automatically retrieving some of those functional traits data for plant species from
the following publicly available databases:


* [The Ecological Flora of the British Isles](http://www.ecoflora.co.uk/)
* [LEDA traitbase](http://www.leda-traitbase.org/LEDAportal/)
* Ellenberg values for Italian Flora
* [Mycorrhizal intensity database](http://esapubs.org/Archive/ecol/E093/059/default.htm)
* [http://luirig.altervista.org/](http://luirig.altervista.org/)
* [MycoFlor](http://www.esajournals.org/doi/abs/10.1890/12-1700.1)
* [BROT](http://www.uv.es/jgpausas/brot.htm)
* [PLANTS](http://www.bricol.net/)
* [Ecological Flora of California](http://ucjeps.berkeley.edu/efc/)


As of September 2024, the following trait databases are not available any more, thus
TR8 is not able to retrieve data from them:

* [Biolflor](http://www.ufz.de/biolflor/index.jsp)
* [Catminat](http://perso.wanadoo.fr/philippe.julve/catminat.htm)


Install the package
==================

  You can either install the stable relase of the package using the version available on CRAN:

```R
install.packages(TR8,dependencies=TRUE)
```

  Or, if you want to try the devel version of the package hosted here, you will need [devtools](https://github.com/hadley/devtools):

```R
## install the package
install.packages("devtools")
## load it
library(devtools)
## activate dev_mode
dev_mode(on=T)
## install TR8
install_github("GioBo/TR8")
## load TR8
library(TR8)
## you can now work with TR8 functions

## if you want to go back and use the CRAN version
## already installed, simply deactivate dev_mode
dev_mode(on=F)
```


Usage
=====

  The package comes with two vignettes aimed at helping users: the first one is a basic guide on how to use the package main function (_tr8()_); to browse it, simply type in the R console:


```R
vignette("TR8")
```

  The second one is a step-by-step description of what might be considered as a typical workflow for a plant ecologist who needs to collect traits' data and later analyze them; to view the vignette, write:

```R
vignette("TR8_workflow")
```


Citation
========

  Please use the following citation whenever you mention the package in a scientific journal:

  "Bocci, G. (2015). TR8: an R package for easily retrieving plant species traits. Methods in Ecology and Evolution, 6(3), 347-350."


   Or, if you use BibTeX:

```
  @Article{,
    author = {Bocci Gionata},
    title = {TR8: an R package for easily retrieving plant species traits},
    journal = {Methods in Ecology and Evolution},
    year = {2015},
    volume = {6},
    number = {3},
    pages = {347--350},
    url = {http://dx.doi.org/10.1111/2041-210X.12327},
  }
```



  Users of the **TR8** package should always cite the sources of information which provided the traits data: the correct citations to be used for the retrieved data can be obtained through the `bib` method; to learn how to use it, just type:


```R
?bib
```








Changes from past versions
==========================

Please check [NEWS file](https://github.com/GioBo/TR8/blob/master/NEWS) for other changes/updates from past versions of the package.

### TR8 v. 0.9.23


As of September 2024, the following trait databases are not available any more, thus
TR8 is not able to retrieve data from them:

* [Biolflor](http://www.ufz.de/biolflor/index.jsp)
* [Catminat](http://perso.wanadoo.fr/philippe.julve/catminat.htm)



### TR8 v. 0.9.22

The tr8() function now has the additional parameter 'allow_persistent': when set to TRUE, tr8 will store retrieved databases
from LEDA and Ecoflora into local files to speed up future queries; if FALSE, the downloaded data will be store in a temp directory that will
be cleaned up at the end of the session; when NULL (default value), the user will be prompted for a choice between the two options
(this new parameter is needed to comply with CRAN policies).

The package now is able to retrieve the trait "flower type after Kugler" from BiolFlor.

Data retrieval from Catminat has been updated.

The 'synonyms' argument for the _tr8()_ function is still avaiable for backward compatibility, but is not working
in the current version of TR8; the mechanisms for checking for synonyms relied on the _tnrs_ function from [taxize](https://cran.r-project.org/web/packages/taxize/index.html) package, which in turn uses taxosaurus.org website: the latter has been having some issues lately and that impair the functioning of TR8.
The 'synonyms' argument will be restored in future if the issue with taxosaurus.org is fixed.




### TR8 v. 0.9.21

**Graphical interface**: as of version 0.9.21 **TR8** uses [Shiny](https://shiny.rstudio.com/) in place of gWidgets to provide the user with a graphical interface to select traits to download.

When the HTML-GUI is being used, the user will have to select the traits of interest from the available lists and then click the "Send request" button and go back to the R console (NB: the browser web page will become inactive; the user will have to take care of closing it).


**R compatibility**: now R version > 3.5.0 is required for TR8 to work; this is needed to make the package compliant with CRAN policies.

### TR8 v. 0.9.20

  **Important note**: the new version of _tr8()_ accepts the new argument 'synonyms': when set to true the function _tnrs_ from the package _taxize_ will be used to to search for synonyms of the provided species list and search trait data for them as well.



[![Research software impact](http://depsy.org/api/package/cran/TR8/badge.svg)](http://depsy.org/package/r/TR8)

[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/TR8)](https://github.com/metacran/cranlogs.app)

[![cran version](http://www.r-pkg.org/badges/version/TR8)](http://cran.rstudio.com/web/packages/TR8)

[![Build Status](https://travis-ci.org/GioBo/TR8.svg?branch=master)](https://travis-ci.org/GioBo/TR8)
