##' lurig() a function to download flowering dates for Italian plant species
##'
##' This function tries to retrieve the months of beginning and ending
##' of the flowering period for species of the italian
##' (data are collected form the website http://luirig.altervista.org/).
##'  The function is used by the \code{get_italian_flowering} function.
##' @title luirig() 
##' @param url a url provided by the function \code{get_italian_flowering}
##' @seealso \code{get_italian_flowering}
##' @return a tuple of values: beginning and ending of flowering period (or NA,NA if data are not found)
##' @author Gionata Bocci <boccigionata@@gmail.com>
luirig<-function(url){
    lookup_month<-data.frame(code=1:12,roman=c("I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"),stringsAsFactors = T)
    pag<-readLines(url)
    flowering=pag[grep("Periodo",pag)]
    if(length(flowering)>0){
        period<-gsub(".*fioritura: (.*)<br>","\\1",flowering)
        ## this if/else is needed because some species have URL but
        ## they do not have flowering data, thus this field is
        ## filled with a "-"
        if(period!="-"){
            begin<-gsub("(.+)-.*","\\1",period)
            begin<-lookup_month$code[lookup_month$roman==begin]
            end<-gsub(".+-(.+)","\\1",period)
            end<-lookup_month$code[lookup_month$roman==end]
            return(c(begin,end))
        }else{return(c(NA,NA))}
    }
}


##'
##'
##' ##' get_italian_flowering get the beginning and the end of the flowering
##' phase for the italian flora. Values are based on Pignatti and retrieved
##' from the \url{http://luirig.altervista.org/}
##'
##' 
##' 
##' @title get_italian_flowering 
##' @param species_list : a vector containing species names
##' @param TRAITS a vector containing the traits to be downloaded (used as a check for
##' tr8_gui() created variables)
##' @return a dataframe with two columns, the beginning and the end month (expressed as a number from 1 to 12)
##' of the flowering phase
##' @references \url{http://luirig.altervista.org/}
##' @author Gionata Bocci <boccigionata@@gmail.com>
get_italian_flowering<-function(species_list,TRAITS){
    res<-new("results")
    if(is.null(TRAITS)){
        res@results<-NULL
    }else{
        test<-("IT_begin_flow"%in%TRAITS||"IT_end_flow"%in%TRAITS)
        if(length(TRAITS)==0||test){
            base_url="http://luirig.altervista.org/flora/taxa/index1.php?scientific-name="##vicia+sativa
            base_url_bis<-"http://luirig.altervista.org/schede/ae/"
            Sys.setlocale('LC_ALL','C')
            flower_date<-list()
            for(cur in species_list){
                species<-cur
                cur<-tolower(cur)
                ## some species are found in url pattern base_url/genus+species
                cur<-gsub("^([A-Za-z]+) ([A-Za-z-]+).*","\\1+\\2",cur)
                ## other species are found in url pattern base_urlbis/genus_species.htm
                cur_bis<-gsub("^([A-Za-z]+) ([A-Za-z-]+).*","\\1_\\2",tolower(species))
                url<-paste(base_url,cur,sep="")
                url_bis<-paste(base_url_bis,cur_bis,".htm",sep="")
                ## check firt pattern
                if(url.exists(url)){
                    flower_date[[species]]<-luirig(url)
                }else{
                    ## otherwise check second pattern
                    if(url.exists(url_bis)){
                        flower_date[[species]]<-luirig(url_bis)
                        ##if theese don't work, use NA NA as values
                    }else{flower_date[[species]]<-c(NA,NA)}
                }
            }
            results<-ldply(flower_date)
            row.names(results)<-results[,1]
            results<-results[,2:ncol(results)]
            names(results)<-c("IT_begin_flow","IT_end_flow")
            res@results<-results
        }else{
            res@results<-NULL
        }
    }
    res@bibliography<-"Pignatti Sandro, 1982 Flora d'Italia.\nEdagricole, Bologna."
    return(res)
}
