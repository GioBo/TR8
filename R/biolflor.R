
list_of_traits_Biolflor=c(
    "Life form"                        
    ,"Life span"                              
    ,"Rosettes"                               
    ,"Vegetative propagation"                 
    ,"Storage organs"                         
    ,"Type of reproduction"                   
    ,"Type of seed production"                
    ,"Strategy type"                          
    ,"Pollen vector"

                                        #"Floristic status"                       
                                        #"Evolutionary origin"                    ,
                                        # "Region of origin"                       ,
                                        # "Endemism"                               ,
                                        # "Mode of introduction"                   ,
                                        # "Time and region of first naturalization",
                                        # "Degree of naturalization"               ,
                                        # "Chromosome number"                      ,
                                        # "DNA content"                            ,
                                        # "Phylogeny code"                         ,
                                        # "Shoot metamorphoses"                    ,
                                        # "Root metamorphoses"                     ,
                                        # "Climbing"                               ,
                                        # "Nutritional adaptations"                ,
                                        # "Leaf persistence"                       ,
                                        # "Leaf anatomy"                           ,
                                        # "Leaf form"                              ,
                                        # "Symphenological Groups"                 ,
                                        # "Type of apomixis"                       ,
                                        # "Dicliny"                                ,
                                        # "Dichogamy"                              ,
                                        # "Heterostyly"                            ,
                                        # "Self-sterility and self-incompatibility",
                                        # "SI mechanism"                           ,
                                        # "Breeding system"                        ,
                                        # "P/O ratio"                              ,
                                        # "Floral rewards"                         ,
                                        # "Flower color"                           ,
                                        # "UV reflection of the flower"            ,
                                        # "Flower class after MUELLER"             ,
                                        # "Flower type after KUGLER"               ,
                                        # "Fruit type"                             ,
                                        # "Diaspore type"                          ,
                                        # "Germinule type"                         ,
                                        # "Weights"                                ,
                                        # "Sizes"                                  ,
                                        # "Grassland utilization indicator values" ,
                                        # "Floristic zone and altitudinal level"   ,
                                        # "Number of inhabited floristic zones"    ,
                                        # "Oceanity"                               ,
                                        # "Floristic region"                       ,
                                        # "Hemeroby"                               ,
                                        # "Number of hemerobic levels"             ,
                                        # "Urbanity"                               ,
                                        # "Habitat"                                ,
                                        # "Class"                                  
    )

traits_special_Biolflor=c(
    "Flower class after MUELLER",
    "Begin of flowering (months)",
    "End of flowering (months)",
    "Duration of flowering (months)",
    "Number of flowering phases"
)

traits_pollen_Biolflor=c("Pollen vector")


## biolflor_traits a class for containing traits retrieved from Biolflor
##
## This class is used to retrieve traits data from species contained
## in the Biolflor web database
##
## @slot url url of the corresponding web page for the species of interest
## @slot extracted a list of traits
## @slot list_traits a vector containing the list of traits which can be downloaded by the package
## @slot list_special_traits some of the traits require special Xpath rules to be extracted
## @exportClass biolflor_traits
setClass("biolflor_traits",representation=list(url="character",extracted="list",list_traits="vector",list_special_traits="vector",results="data.frame"))


## extract data fro biolflor_traits classes
## @param .Object an object of biolflor_traits signature
setGeneric(name="extract",def=function(.Object){standardGeneric("extract")})

setMethod(f="extract",
          signature="biolflor_traits",
          definition=function(.Object){


              if(.Object@url=="not present"){
                  for(trait in .Object@list_traits){
                      .Object@extracted[trait]=NA
                  }

                  for(trait in .Object@list_special_traits){
                      .Object@extracted[trait]=NA
                      }
              }

              else{
                  ##set language to english
                  form="http://www2.ufz.de/biolflor/index.jsp"
                  ##base_url<-"http://www2.ufz.de"
                  param<-list("language"='en')
                  vai<-getForm(form,.params=list("language"="en"),style="POST")
                  
                  ##get web page
                  base_url<-"http://www2.ufz.de"
                  temp_pag<-htmlParse(getURL(paste(base_url,.Object@url,sep="")))
                                  
                  ## parse html and extract data
                  for(trait in .Object@list_traits){
                      query=paste("//*[text()='",trait,"']/following-sibling::td/a",sep="")
                      value=xpathApply(temp_pag,query,xmlValue)
                      if(length(value) > 0) {
                          ##                      print(value)
                          .Object@extracted[trait]=paste(unlist(value),collapse = " - ")
                      }else{.Object@extracted[trait]=NA}
                  }

                  ## extract special traits (pollen)
                  for(trait in .Object@list_special_traits){
                      query=paste("//*[text()='",trait,"']/following-sibling::td",sep="")
                      value=xpathApply(temp_pag,query,xmlValue)
                      if(length(value) > 0) {
                          ##                      print(value)
                          .Object@extracted[trait]=paste(unlist(value),collapse = " - ")
                      }
                      else{.Object@extracted[trait]=NA}
                      
                  }

              }
              return(.Object)

          }
          )



#' Retrieve traits data from the BiolFlor website.
#' 
#' This function allows the user to download some pre-defined traits from the
#' BiolFlor website: the function returs a dataframe with species name in row and traits data in
#' column.
#' 
#' @param list_species vector containing names of those plant species for
#' which traits data need to be downloaded.
#' @param TRAITS a vector containing the traits to be downloaded (used as a check for tr8_gui() created variables)
#' 
#' @return dataframe with species name in row and traits data in
#' column.
#' @author Gionata Bocci <boccigionata@@gmail.com>
#' @references BIOLFLOR - Eine Datenbank zu biologisch-ökologischen Merkmalen zur Flora von Deutschland.
#' Schriftenreihe für Vegetationskunde 38: 1-333.  (Bundesamt für. Bonn, Bundesamt für Naturschutz)
#' @keywords traits
#' @usage biolflor(list_species,TRAITS)
#' @examples \dontrun{
#' biolflor(c("Abies alba"))
#' }
biolflor<-function(list_species,TRAITS){
    res<-new("results")
    env<-new.env(parent = parent.frame())
    data(biolflor_lookup,envir=env)
    biolflor_lookup<-get("biolflor_lookup",envir = env)    
    if(is.null(TRAITS)){
        res@results<-NULL
    }else{
        if(length(TRAITS)>0){
            ## otherwise chech which of the selected traits are available
            list_of_traits_Biolflor<-list_of_traits_Biolflor[list_of_traits_Biolflor%in%TRAITS]
            ## check also the "special biolflor traits"
            traits_special_Biolflor<-traits_special_Biolflor[traits_special_Biolflor%in%TRAITS]
            ## use the user's selected traits to instantiate the class
            ## and retrieve data
        }

        tmp_list=list()
        for(cur in list_species){
            if(cur%in%biolflor_lookup$acceptedname|cur%in%biolflor_lookup$submittedname){
                species_url<-with(biolflor_lookup,biolflor_lookup[acceptedname==cur|submittedname==cur,"V2"])
                ## check if 2 species have the same accepted name
                if(length(species_url)>1){
                    species_url<-with(biolflor_lookup,biolflor_lookup[acceptedname==cur&submittedname==cur,"V2"])
                }
            }else{species_url<-"not present"}
            
            prova<-new("biolflor_traits",url=species_url,list_traits=list_of_traits_Biolflor,list_special_traits=traits_special_Biolflor)
            bio_res<-extract(prova)
            tmp_list[[cur]]<-data.frame(bio_res@extracted)           
        }
        
        
        tmp_df<-do.call(rbind,tmp_list)
        res@results<-tmp_df

        }
    remove(list=c("biolflor_lookup"), envir = env)    
    stringa<-"Klotz, S., K\303\274hn, I., Durka, W. (eds) (2002). BIOLFLOR - Eine Datenbank zu \nbiologisch-\303\266kologischen Merkmalen zur Flora von Deutschland. Schriftenreihe\nf\303\274r Vegetationskunde 38: 1-333. (Bundesamt f\303\274r. Bonn, Bundesamt f\303\274r Naturschutz).\n"
    Encoding(stringa)<-"unicode"
    res@bibliography<-stringa
    
    return(res)
}

