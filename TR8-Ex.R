pkgname <- "TR8"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('TR8')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("ECOFLORA_df")
### * ECOFLORA_df

flush(stderr()); flush(stdout())

### Name: ECOFLORA_df
### Title: *ECOFLORA_df*: local lookup table for Ecoflora species' url(s)
### Aliases: ECOFLORA_df
### Keywords: datasets

### ** Examples

## Not run: 
##D data(ECOFLORA_df)
## End(Not run)



cleanEx()
nameEx("Ecoflora-class")
### * Ecoflora-class

flush(stderr()); flush(stdout())

### Name: Ecoflora-class
### Title: Class '"Ecoflora"': Class containing traits from Ecological
###   Flora of the british Isles
### Aliases: Ecoflora-class initialize,Ecoflora-method
###   retrieve,Ecoflora-method
### Keywords: classes

### ** Examples

showClass("Ecoflora")



cleanEx()
nameEx("LEDA_df")
### * LEDA_df

flush(stderr()); flush(stdout())

### Name: LEDA_df
### Title: *LEDA_df* : local (partial) copy of the LEDA traitbase website.
### Aliases: LEDA_df
### Keywords: datasets

### ** Examples

## Not run: 
##D data(LEDA_df)
## End(Not run)



cleanEx()
nameEx("TR8-package")
### * TR8-package

flush(stderr()); flush(stdout())

### Name: TR8-package
### Title: TR8: a tool for retrieving functional traits data for plant
###   species.
### Aliases: TR8 TR8-package
### Keywords: functional package, traits

### ** Examples

## Not run: 
##D ## store the resulting data.frame in \code{My_traits}
##D 
##D #My_traits<-tr8(c("Abutilon theophrasti","Trifolium campestre"))
## End(Not run)



cleanEx()
nameEx("Tr8-class")
### * Tr8-class

flush(stderr()); flush(stdout())

### Name: Tr8-class
### Title: Class '"Tr8"'
### Aliases: Tr8-class bib,Tr8-method bib issues,Tr8-method
###   lookup,Tr8-method lookup show,Tr8-method extract_traits
###   extract_traits,Tr8-method
### Keywords: classes

### ** Examples

showClass("Tr8")



cleanEx()
nameEx("biolflor")
### * biolflor

flush(stderr()); flush(stdout())

### Name: biolflor
### Title: Retrieve traits data from the BiolFlor website.
### Aliases: biolflor
### Keywords: traits

### ** Examples

## Not run: 
##D biolflor(c("Abies alba"))
## End(Not run)



cleanEx()
nameEx("biolflor_check")
### * biolflor_check

flush(stderr()); flush(stdout())

### Name: biolflor_check
### Title: biolflor_check
### Aliases: biolflor_check
### Keywords: dataframe

### ** Examples

## Not run: 
##D #data(biolflor_check)
## End(Not run)



cleanEx()
nameEx("biolflor_clean")
### * biolflor_clean

flush(stderr()); flush(stdout())

### Name: biolflor_clean
### Title: Removes redundant text in traits collected from Biolflor
### Aliases: biolflor_clean
### Keywords: traits

### ** Examples

## Not run: 
##D bolflor_clean(biolflor("Avena sativa"))
## End(Not run)



cleanEx()
nameEx("biolflor_lookup")
### * biolflor_lookup

flush(stderr()); flush(stdout())

### Name: biolflor_lookup
### Title: biolflor_lookup
### Aliases: biolflor_lookup
### Keywords: datasets

### ** Examples

## Not run: 
##D data(biolflor_lookup)
## End(Not run)



cleanEx()
nameEx("biolflor_lu")
### * biolflor_lu

flush(stderr()); flush(stdout())

### Name: biolflor_lu
### Title: biolflor_lu
### Aliases: biolflor_lu
### Keywords: dataframe

### ** Examples

## Not run: 
##D #data(biolflor_lu)
## End(Not run)



cleanEx()
nameEx("biolflor_traits-class")
### * biolflor_traits-class

flush(stderr()); flush(stdout())

### Name: biolflor_traits-class
### Title: Class '"biolflor_traits"' for containing traits retrieved from
###   Biolflor
### Aliases: biolflor_traits-class extract,biolflor_traits-method
### Keywords: classes

### ** Examples

showClass("biolflor_traits")



cleanEx()
nameEx("column_list")
### * column_list

flush(stderr()); flush(stdout())

### Name: column_list
### Title: column_list
### Aliases: column_list
### Keywords: dataframe

### ** Examples

## Not run: 
##D #data(myco)
## End(Not run)



cleanEx()
nameEx("ecoflora")
### * ecoflora

flush(stderr()); flush(stdout())

### Name: ecoflora
### Title: Retrieves traits data from Ecoflora website
### Aliases: ecoflora

### ** Examples

## Not run: 
##D #' #My_data<-ecoflora(species_list=c("Abies alba"))
## End(Not run)



cleanEx()
nameEx("ellenberg_pignatti-class")
### * ellenberg_pignatti-class

flush(stderr()); flush(stdout())

### Name: ellenberg_pignatti-class
### Title: Class '"ellenberg_pignatti"' to contain ellenberg values for
###   Italian Flora's species
### Aliases: ellenberg_pignatti-class get_traits,ellenberg_pignatti-method
### Keywords: classes

### ** Examples

showClass("ellenberg_pignatti")



cleanEx()
nameEx("leda")
### * leda

flush(stderr()); flush(stdout())

### Name: leda
### Title: Extracts functional traits from the LEDA traitbase.
### Aliases: leda

### ** Examples

## Not run: 
##D 
##D #My_traits<-leda(species_list=c("Abies alba"))
## End(Not run)



cleanEx()
nameEx("leda_general")
### * leda_general

flush(stderr()); flush(stdout())

### Name: leda_general
### Title: Function which takes care of downloading the '.txt' files
###   composing the LEDA Traitbase
### Aliases: leda_general
### Keywords: tr8 leda_lookup

### ** Examples

## age_of_first_flowering<-leda_general(url="age%20of%20first%20flowering.txt",skip_row = 4,column="age of first flowering",out_name="age_first_flowering",species=species)




cleanEx()
nameEx("leda_lookup")
### * leda_lookup

flush(stderr()); flush(stdout())

### Name: leda_lookup
### Title: List with reference variables needed to download traits from
###   LEDA Traitbas
### Aliases: leda_lookup
### Keywords: datasets

### ** Examples

data(leda_lookup)



cleanEx()
nameEx("list_of_traits_Biolflor")
### * list_of_traits_Biolflor

flush(stderr()); flush(stdout())

### Name: list_of_traits_Biolflor
### Title: list_of_traits_Biolflor
### Aliases: list_of_traits_Biolflor
### Keywords: list_of_traits_Biolflor

### ** Examples

## Not run: 
##D #data(list_of_traits_Biolflor)
## End(Not run)



cleanEx()
nameEx("pignatti")
### * pignatti

flush(stderr()); flush(stdout())

### Name: pignatti
### Title: pignatti
### Aliases: pignatti
### Keywords: datasets

### ** Examples

## Not run: 
##D data(pignatti)
## End(Not run)



cleanEx()
nameEx("retrieve_amf")
### * retrieve_amf

flush(stderr()); flush(stdout())

### Name: retrieve_amf
### Title: retrieve_amf
### Aliases: retrieve_amf

### ** Examples

## Not run: 
##D ##My_traits<-retrieve_amf(species_list=c("Abies alba"))
## End(Not run)



cleanEx()
nameEx("tr8")
### * tr8

flush(stderr()); flush(stdout())

### Name: tr8
### Title: 'tr8': a function for retrieving functional traits data from
###   various databases.
### Aliases: tr8

### ** Examples

## Not run: 
##D #My_traits<-tr8(species_list=c("Abies alba"))
## End(Not run)



cleanEx()
nameEx("traits_eco")
### * traits_eco

flush(stderr()); flush(stdout())

### Name: traits_eco
### Title: Set of functional traits to be retrieved by Ecoflora.
### Aliases: traits_eco
### Keywords: datasets

### ** Examples

## Not run: 
##D data(traits_eco)
## End(Not run)



cleanEx()
nameEx("traits_pollen_Biolflor")
### * traits_pollen_Biolflor

flush(stderr()); flush(stdout())

### Name: traits_pollen_Biolflor
### Title: traits_pollen_Biolflor
### Aliases: traits_pollen_Biolflor
### Keywords: biolflor

### ** Examples

## Not run: 
##D #data(traits_pollen_Biolflor)
## End(Not run)



cleanEx()
nameEx("traits_special_Biolflor")
### * traits_special_Biolflor

flush(stderr()); flush(stdout())

### Name: traits_special_Biolflor
### Title: traits_special_Biolflor
### Aliases: traits_special_Biolflor
### Keywords: traits_special_Biolflor

### ** Examples

## Not run: 
##D #data(traits_special_Biolflor)
## End(Not run)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
