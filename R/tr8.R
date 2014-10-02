


##
## Class Tr8 is used as a "containter" for all other functions and classes
## Class Tr8
## needed to download traits data from various databases
## 
## @name Tr8
## @rdname Tr8-Class
## @exportClass Tr8
## @slot species_list a list of species for which traits data are to be searched
## @slot results dataframe containing scraped traits
## @slot not_valid species whose name were not present in the Ecoflora database
## @slot double_names species for which more than one name was found
setClass("Tr8",representation =list(species_list="vector",results="data.frame",not_valid="vector",double_names="vector",bibliography="list"))

## Method issues
##
## @name issues
## @rdname Tr8-Class
## @exportMethod issues
setGeneric(name="issues",def=function(.Object){standardGeneric("issues")})

## @rdname Tr8-Class
## @param .Object an object of class Tr8
setMethod(f="issues",
          signature = "Tr8",
          definition = function(.Object){
              ## warning for double names
              if(length(.Object@double_names)>0){
                  cat("\n")
                  cat("\t WARNING\n")
                  cat("\n")
                  for(sp in .Object@double_names){
                      cat(paste("\tFor species",sp," multiple matched names were found\n"))
                  }
                  cat("\n")
                  }
              ## warning for missing species
              if(length(.Object@not_valid)>0){
                  cat("\n")
                  cat("\t WARNING\n")
                  cat("\n")
                  for(sp in .Object@not_valid){
                      cat(paste("\tFor species",sp," no matched names were found\n"))
                  }
                  cat("\n")
              }
              cat("\tPlease check that these results are consistent with your orginal dataset!\n")
##              return(.Object)
          }
          
    )
           

## Method lookup
##
## @name lookup
## @rdname Tr8-Class
## @exportMethod lookup
setGeneric(name="lookup",def=function(.Object){standardGeneric("lookup")})

## @rdname Tr8-Class
## @aliases lookup, Tr8-Class
## @param .Object an object of class Tr8
setMethod(f="lookup",
          


          signature="Tr8",
          definition = function(.Object){
              ## data(column_list)
              env<-new.env(parent = parent.frame())
              data(column_list,envir = env)
              column_list<-get("column_list",envir=env)


              cat("\n")
              cat("\n")
              cat("*****************************************************************")
              cat("\n")
              cat("To interpret the traits data, please refer to the following table\n")
              cat("\n")
              cat(sprintf("%-30s\t%-40s\t%-40s\n"," code","description","reference database\n"))
              cat(sprintf("%-30s\t%-40s\t%-40s\n"," ----","-----------","------------------\n"))
              for(i in names(column_list)){
                  cat(sprintf("%-30s\t%-40s\t%-30s\n",column_list[i][[1]][1],column_list[i][[1]][2],column_list[i][[1]][3]))
              }
              cat("\n")
              cat(sprintf("%-30s\t%-40s\t%-40s\n"," ****","***********","******************\n"))

              remove(list=c("column_list"), envir = env)    

          }
)

## @rdname Tr8-Class
## @aliases show, Tr8-Class
## @param object an object of class Tr8
setMethod(f="show",
          signature="Tr8",
          function(object){
              print(object@results)
          }
          )


## A method to extract results form a Tr8 object
##
## the slots @results will be returned by the function
setGeneric("extract_traits",def=function(object){standardGeneric("extract_traits")})

setMethod(f="extract_traits",
          signature="Tr8",
          function(object){
              return(object@results)
          }
          )


## Method bib
#@name bib
#@rdname Tr8-Class
#@exportMethod bib
setGeneric(name="bib",def=function(.Object){standardGeneric("bib")})


setMethod(f="bib",
           signature="Tr8",
           definition = function(.Object){
                   cat("\n")
                   cat("Please use the following references for the data you retrieved with tr8()\n")
                   cat("\n")
               for(db in names(.Object@bibliography)){
                   cat("************************************************\n")
                   cat("\n\nFor the following traits:\n\n")
                   for(trait in .Object@bibliography[[db]]){
                       cat("\t * ",paste(trait),"\n")
                   }
                   cat("\nplease use:\n\n")
                   cat(db,fill=TRUE)
                   cat("\n")
               }
                   cat("************************************************\n")
           }

          )

## @rdname Tr8-Class
## @aliases bib, Tr8-Class
## @param .Object an object of class Tr8
## setMethod(f="bib",
##           signature="Tr8",
##           definition = function(.Object){
##               cat("\n")
##               cat("Please use the following references when using data retrieved with tr8()\n")
##               cat("\n")
##               ## cat(sep="\n",strwrap("BIOLFLOR - Eine Datenbank zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. Schriftenreihe für Vegetationskunde 38: 1-333.  (Bundesamt für. Bonn, Bundesamt für Naturschutz)"))
##               ## cat("\n")
##               ## cat(sep="\n",strwrap("Kleyer, M., Bekker, R.M., Knevel, I.C., Bakker, J.P, Thompson, K., Sonnenschein, M., Poschlod, P., Van Groenendael, J.M., Klimes, L., Klimesova, J., Klotz, S., Rusch, G.M., Hermy, M., Adriaens, D., Boedeltje, G., Bossuyt, B., Dannemann, A., Endels, P., G\xf6tzenberger, L., Hodgson, J.G., Jackel, A-K., Kuehn, I., Kunzmann, D., Ozinga, W.A., Römermann, C., Stadler, M., Schlegelmilch, J., Steendam, H.J., Tackenberg, O., Wilmann, B., Cornelissen, J.H.C., Eriksson, O., Garnier, E., Peco, B. (2008): The LEDA Traitbase: A database of life-history traits of Northwest European flora. Journal of Ecology 96: 1266-1274."))
##               ## cat("\n")
##               ## cat(sep="\n",strwrap("Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora Database, J. Ecol., 82, 415-425."))
##               ## cat("\n")
##               ## cat(sep="\n",strwrap("Pignatti S., Menegoni P., Pietrosanti S., 2005, Biondicazione attraverso le piante vascolari. Valori di indicazione secondo Ellenberg (Zeigerwerte) per le specie della Flora d'Italia. Braun-Blanquetia 39, Camerino, pp.  97."))
##               ## cat("\n")
##               ## cat(sep="\n",strwrap("Asem A. Akhmetzhanova, Nadejda A. Soudzilovskaia, Vladimir G. Onipchenko, Will K. Cornwell, Vladimir A. Agafonov, Ivan A. Selivanov, and Johannes H. C. Cornelissen. 2012. A rediscovered treasure: mycorrhizal intensity database for 3000 vascular plants species across the former Soviet Union. Ecology 93:689. URL: http://esapubs.org/Archive/ecol/E093/059/default.htm"))
##               ## cat("\n")
##           }
##           )


#' \code{tr8}: a function for retrieving functional traits data from various
#' databases. 
#' 
#' \code{tr8} makes use of other function provided by the \code{TR8} package in
#' order to query various databases and provide the user with a dataframe
#' containing traits data for the species of interest. 
#' 
#' @param species_list a vector containing names of the plant species for which
#' traits data want to be extracted.
#' @param gui_config if set to TRUE a GUI for selecting traits of interest is shown (default is TRUE)
#' @return data.frame containing various traits data for the species of interest
#' @author Gionata Bocci <boccigionata@@gmail.com>
#' @seealso \code{\link{ecoflora}}, \code{\link{leda}}, \code{\link{biolflor}},\code{\link{pignatti_f}}
#' @references Please always use the following citations any time you use trait
#' data retrieved with \code{tr8}
#' 
#' \bold{BiolFlor}
#'
#' BIOLFLOR - Eine Datenbank zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. Schriftenreihe für Vegetationskunde 38: 1-333.  (Bundesamt für. Bonn, Bundesamt für Naturschutz)
#' 
#' \bold{Ecoflora}
#' 
#' Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora Database, J.
#' Ecol., 82, 415-425.  \url{http://www.ecoflora.co.uk}
#' 
#' \bold{LEDA traitbase}
#' Kleyer, M., Bekker, R.M., Knevel, I.C., Bakker, J.P, Thompson, K., Sonnenschein, M., Poschlod, P.,
#' Van Groenendael, J.M., Klimes, L., Klimesova, J., Klotz, S., Rusch, G.M., Hermy, M., Adriaens, D.,
#' Boedeltje, G., Bossuyt, B., Dannemann, A., Endels, P., Götzenberger, L., Hodgson, J.G., Jackel, A-K.,
#' Kühn, I., Kunzmann, D., Ozinga, W.A., Römermann, C., Stadler, M., Schlegelmilch, J., Steendam, H.J.,
#' Tackenberg, O., Wilmann, B., Cornelissen, J.H.C., Eriksson, O., Garnier, E., Peco, B. (2008):
#' The LEDA Traitbase: A database of life-history traits of Northwest European flora.
#' Journal of Ecology 96: 1266-1274.
#'
#' \bold{Akhmetzhanova et al, 2012}
#' 
#' Asem A. Akhmetzhanova, Nadejda A. Soudzilovskaia, Vladimir G. Onipchenko,
#' Will K. Cornwell, Vladimir A. Agafonov, Ivan A. Selivanov, and Johannes H. C. Cornelissen. 2012.
#' A rediscovered treasure: mycorrhizal intensity database for 3000 vascular plants
#' species across the former Soviet Union. Ecology 93:689.
#' URL: http://esapubs.org/Archive/ecol/E093/059/default.htm
#'
#' 
#' \bold{Pignatti et al., 2005}
#' 
#' Pignatti S., Menegoni P., Pietrosanti S., 2005, Biondicazione attraverso le piante vascolari.
#' Valori di indicazione secondo Ellenberg (Zeigerwerte) per le specie della Flora d'Italia.
#' Braun-Blanquetia 39, Camerino, pp.  97.
#'
#' #' @examples \dontrun{
#' #My_traits<-tr8(species_list=c("Abies alba"))
#' }
#' @export tr8
tr8<-function(species_list,gui_config=TRUE){

    ## get column_list dataset
    env<-new.env(parent = parent.frame())
    data(column_list,envir = env)
    column_list<-get("column_list",envir=env)
        


    
    if(missing(species_list)||!is.character(species_list)){
        message("\ntr8() accepts only a list of plant species names \nplease read help(tr8)\n")
    }else{

        ## if the user wants to manually sets the parameters to download
        if(gui_config)
            {
                gmessage(title="TR8 reminder!","Please always use the appropriate citations for the downloaded data.\n
\n Run the bib() function on the downloaded data to get the correct bibliographic citations to be used.\n")
                        
                traits_list<-tr8_config()
            }else{

                traits_list<-list("Biolflor"=NULL,"LEDA"=NULL,"ECOFLORA"=NULL,"PIGNATTI"=c("L","T","C","U","R","N","S"),"AMF"=NULL)
            }
        if(!exists("traits_list")){
            gmessage(title="TR8 reminder!","Please always use the appropriate citations for the downloaded data.\n
\n Run the bib() function on the downloaded data to get the correct bibliographic citations to be used.\n")

            traits_list<-list("Biolflor"=as.character(),"LEDA"=as.character(),"ECOFLORA"=as.character(),"PIGNATTI"=as.character(),"AMF"=as.character())
        }
        ## load lookup table
        ## data(column_list)
        ## convert it to a data frame
        temp_dframe<-ldply(column_list)
        names(temp_dframe)<-c("long_code","short_code","description","db")

        
        ## retrieve traits from ecolora function
        eco_traits<-ecoflora(species_list,TRAITS=traits_list$ECOFLORA)
        ## retrieve data from local LEDA datasets
        if(!exists("rearranged")){
            rearranged<-NULL}
        leda_traits<-leda(species_list,TRAITS=traits_list$LEDA,rearranged=rearranged)

        ## retrieve data from BiolFlor
        biolflor_traits<-biolflor(species_list,traits_list$Biolflor)
        
        ## retrieve data from Pignatti
        pignatti_traits<-pignatti_f(species_list,TRAITS=traits_list$PIGNATTI)

        ## retrieve flowering periods for Italy
        it_flowering<-get_italian_flowering(species_list,TRAITS=traits_list$PIGNATTI)
        
        ## add AMF
        amf_traits<-retrieve_amf(species_list,TRAITS=traits_list$AMF)
        
        ## merge the results
        tr8_traits<-data.frame(species_list,row.names=species_list)
        bibliography=list()
        for(i in c(eco_traits,leda_traits,biolflor_traits,pignatti_traits,it_flowering,amf_traits)){
            ## merge the dataframes only if they contain data
            if(!is.null(i@results))
                {
                    ## update the bibliography (Adding the required sources
                    ## of information
                    bibliography[[i@bibliography]]=names(i@results)
                    tr8_traits=merge(tr8_traits,i@results,by.x=0,by.y=0,all=TRUE)
                    row.names(tr8_traits)<-tr8_traits$Row.names
                    tr8_traits<-tr8_traits[,-1]
                }
        }

        ## remove column species_list
        row_names<-row.names(tr8_traits)
        names_columns<-names(tr8_traits)[!(names(tr8_traits)%in%c("Row.names","species_list"))]
        tr8_traits<-as.data.frame(tr8_traits[,names_columns],row.names = row_names)
        names(tr8_traits)<-names_columns

        obj<-new("Tr8")
                                        #    obj@double_names<-unique(c(eco_traits@double_names,leda_traits@double_names))
                                        #    obj@not_valid<-intersect(intersect(eco_traits@not_valid,leda_traits@not_valid),pignatti_traits@not_valid)
        tr8_traits<-biolflor_clean(tr8_traits)
        tr8_traits<-column_conversion(tr8_traits)
        obj@results<-tr8_traits
        obj@bibliography<-bibliography
        
                                        #    issues(obj)
        ##return(obj)
                                        #    return(tr8_traits)
        
        remove(list=c("column_list"), envir = env)    
        return(obj)
    }
}

