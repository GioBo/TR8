TR8
===

R package for downloading functional traits data for plant species


Plant ecologists often need to collect "traits" data about plant species which are 
often scattered among various databases: TR8 contains a set of tools which take care of
automatically retrieving some of those functional traits data for plant species from 
the following publicly available databases:

* [Biolflor](http://www2.ufz.de/biolflor/index.jsp)
* [The Ecological Flora of the British Isles](http://www.ecoflora.co.uk/)
* [LEDA traitbase](http://www.leda-traitbase.org/LEDAportal/)
* Ellenberg values for Italian Flora
* [Mycorrhizal intensity database](http://esapubs.org/Archive/ecol/E093/059/default.htm)
* [http://luirig.altervista.org/](http://luirig.altervista.org/)
* [MycoFlor](http://www.esajournals.org/doi/abs/10.1890/12-1700.1)
* [Catminat](http://perso.wanadoo.fr/philippe.julve/catminat.htm)
* [BROT](http://www.uv.es/jgpausas/brot.htm)
* [PLANTS](http://www.bricol.net/)
* [Ecological Flora of California](http://ucjeps.berkeley.edu/efc/)




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
  



Changes from past versions
==========================


  **Important note**: the new version of _tr8()_ accepts the new argument 'synonyms': when set to true the function _tnrs_ from the package _taxize_ will be used to to search for synonyms of the provided species list and search trait data for them as well. 

   Please check [NEWS file](https://github.com/GioBo/TR8/blob/master/NEWS) for other changes/updates from past versions of the package.


[![Research software impact](http://depsy.org/api/package/cran/TR8/badge.svg)](http://depsy.org/package/r/TR8)

[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/TR8)](https://github.com/metacran/cranlogs.app)

[![cran version](http://www.r-pkg.org/badges/version/TR8)](http://cran.rstudio.com/web/packages/TR8)
