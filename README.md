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

 A basic guide for using the package is provided in [TR8.pdf](https://github.com/GioBo/TR8/blob/master/vignettes/TR8.pdf)


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
  
MA SARA'
