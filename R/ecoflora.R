### * Definition of Ecoflora Class

## Class containing traits from Ecological Flora of the british Isles
##
## The class is a box containing url and traits data for species
## which are present in the Ecoflora website
setClass("Ecoflora",representation=list(species_list="vector",reference="data.frame",df="data.frame",not_valid="vector",results="data.frame",traits="list",double_names="vector"))



## * initialization of Ecoflora Class

## During the initialization of an \code{ecoflora} object, the
## method will take care of chacking and correcting url of
## plant species

setMethod('initialize',
          signature="Ecoflora",
          definition = function(.Object,species_list,reference,traits){          
              .Object@species_list<-species_list
              ## list which will contain ecoflora
              ## web link for each species
              base_url<-"http://www.ecoflora.co.uk/search_ecochars.php?"
              lookup=list()
              for(i in species_list){
                  ## is the species of interest either found in ecoflora matchedname, species name or acceptedname?
                  results<-with(reference,reference[matchedname==i|species==i|acceptedname==i,])
                  ## if there's just a single species, everything is fine, just extract the corresponding url
                  if(nrow(results)==1){
                      lookup[[i]]<-paste(base_url,results$web_link,sep="")
                  }
                  else
                      {
                          ## if multiple species are found, just take the url for that species which has acceptedname==ecoflora name
                          if(nrow(results)>1){
                              results2<-with(reference,reference[matchedname==i&species==i&acceptedname==i,])
                              lookup[[i]]<-paste(base_url,results2$web_link,sep="")
                          }
                          else
                              {
                                  ## if the above doesn't work, put the species in the "non valid" class slot
                                  .Object@not_valid<-c(.Object@not_valid,i)
                                  lookup[[i]]<-"not found"
                              }
                      }
              }
              ## convert the list to a dataframe and store the result in the df slot
              lookup<-ldply(lookup)
              if(nrow(lookup)>0){
                  names(lookup)<-c("species","web_link")
                  .Object@df<-lookup
              }
              .Object@traits<-traits

              return(.Object)
              }

          )
              
### * 'retrieve' method for "Ecoflora"

## The 'retrieve' method for "Ecoflora" objects will download data from
## the Ecoflora website for the passed species
setGeneric( name= "retrieve", def=function(.Object){standardGeneric("retrieve")} )


setMethod(f='retrieve',
          signature='Ecoflora',
          definition = function(.Object){
                  ## eco will contain as many slots as the species passed
                  ## and each slot-species will contain a list of the
                  ## downloaded ecological traits
                  eco<-list()


                  for(species in .Object@df$species){
                      ## url of the web page for the species of interest
                      species_url<-.Object@df$web_link[.Object@df$species==species]
                      if(species_url=="not found"){
                          for(trait in names(.Object@traits)){
                                  eco[[species]][trait]<-NA
                          }
                      }
                      else{
                          ## extract tabe data from the scraped web page
                          eco_data<-readHTMLTable(species_url)[[2]]
                          ## for some traits there are several entries (with the same Code), thus
                          ## the retrieved table must be "aggregated" in order to have 1 entr/trait
                          eco_data<-aggregate(eco_data$Value,by=list(eco_data$Number),paste,collapse=';')                  
                          names(eco_data)<-c("Code","Value")
                          
                          ## fill in the list "eco"; NA values are used for those traits
                          ## which do not have values in the Ecoflora database
                          for(trait in names(.Object@traits)){
                              if(.Object@traits[trait]%in%eco_data$Code){
                                  eco[[species]][trait]<-eco_data$Value[eco_data$Code==.Object@traits[trait]]
                              }else{
                                  eco[[species]][trait]<-NA}
                          }
                      }
                  }
                  ## a dataframe is returned
                  ## NB: species names, being
                  
                  eco<-t(as.data.frame(eco))
                  row.names(eco)<-.Object@df$species
                  
                  ##              return(eco)
                  eco<-as.data.frame(eco)
                  .Object@results<-eco
              return(.Object)
              }
          )




### * wrapper function to extract data from Ecoflora

#' Retrieves traits data from Ecoflora website
#' 
#' The function accepts a list of plant species names, tries to download the
#' corresponding functional traits from the Ecoflora website
#' (\url{http://www.ecoflora.co.uk/}) and return a data.frame with species
#' names as rows and functional traits as columns.
#' 
#' @param species_list a vector containing list of plant species names.
#' @param reference the reference lookup data.frame (this is not ment to be set
#' by users; it is left here for further development)
#' @param TRAITS a vector containing the traits to be downloaded (used as a check for
#' tr8_gui() created variables)
#' @return Return a data.frame with species as rows and traits as columns.
#' Only those species present in the Ecoflora database will be included in this
#' data.frame, other species will be left out.
#' @author Bocci Gionata
#' @references Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora Database, J. Ecol., 82, 415-425.
#' @seealso \code{\link{traits_eco}}
#' @examples \dontrun{
#' #' #My_data<-ecoflora(species_list=c("Abies alba"))
#' }
ecoflora<-function(species_list,reference=ECOFLORA_df,TRAITS)
    {
        env<-new.env()
        res<-new("results")
        data("ECOFLORA_df",envir=env)
        data("traits_eco",envir=env)
        ECOFLORA_df<-get("ECOFLORA_df",envir=env)
        traits_eco<-get("traits_eco",envir=env)
        ## if traits is NULL it means that the user did not selected
        ## a subset of traits (by means of the tr8_config function, thus
        ## all the traits should be downloaded
        
        if(is.null(TRAITS)){
            res@results<-NULL
        }else{
            if(length(TRAITS)==0){
                traits<-traits_eco}else{
                    
                    ## if a subset has been passed, only the
                    ## corresponding codes should be used
                    traits<-traits_eco[names(traits_eco)%in%TRAITS]
                }
            
            obj<-new("Ecoflora",species_list=species_list,reference=reference,traits=traits)
            ##        ret<-as.data.frame(ret@results)
            ##remove(list=c("ECOFLORA_df","traits_eco"),pos =".GlobalEnv")
            ret<-retrieve(obj)
            res@results<-ret@results
        }
        remove(list=c("ECOFLORA_df","traits_eco"),envir = env)
        res@bibliography<-"Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora Database,\nJ. Ecol., 82, 415-425.  http://www.ecoflora.co.uk"
           
        return(res)

    }
