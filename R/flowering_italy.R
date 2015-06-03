
luirig<-function(species){
    lookup_month<-data.frame(code=c(1:12,NA),roman=c("I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII",""),stringsAsFactors = T)
    base_url<-"http://luirig.altervista.org/flora/taxa/floraspecie.php?genere="
    genus<-gsub("(^[a-zA-Z]+) .*","\\1",species,useBytes = TRUE)
    url<-paste(base_url,genus,sep = "")
    RES<-list()
    if(url.exists(url)){
        tables<-readHTMLTable(url)

        if(grep(species,tables[[1]]$"Nome scientifico")){
        ##
        ## New version based on new structure of luirig.altervista.it pages
        ##
            
            res<-tables[[1]]$"Nome scientifico"[grep(species,tables[[1]]$"Nome scientifico")]
            res<-as.character(res)
            IT_beg_flow<-gsub(".*Fiorit:([IVX]+)-([IVX]*)Tipo.*","\\1",res)
            IT_end_flow<-gsub(".*Fiorit:([IVX]+)-([IVX]*)Tipo.*","\\2",res)
            IT_beg_flow<-mapvalues(IT_beg_flow,lookup_month$roman,lookup_month$code,warn_missing = F)
            IT_end_flow<-mapvalues(IT_end_flow,lookup_month$roman,lookup_month$code,warn_missing = F)

            RES[[species]]["IT_beg_flow"]=as.numeric(IT_beg_flow)
            RES[[species]]["IT_end_flow"]=as.numeric(IT_end_flow)
        }else{
            RES[[species]]["IT_beg_flow"]=NA
            RES[[species]]["IT_end_flow"]=NA
        }
    }else{
        RES[[species]]["IT_beg_flow"]=NA
        RES[[species]]["IT_end_flow"]=NA
    }
    return(RES[[species]])
}



    

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
get_italian_flowering<-function(species_list,TRAITS,rest){
    res<-new("results")
    if(is.null(TRAITS)){
        res@results<-NULL
    }else{
        test<-("IT_beg_flow"%in%TRAITS||"IT_end_flow"%in%TRAITS)
        if(length(TRAITS)==0||test){
            ## names_month<-c("Gennaio","Febbraio","Marzo","Aprile","Maggio","Giugno","Luglio","Agosto","Settembre","Ottobre","Novembre","Dicembre")
            ## base_url="http://luirig.altervista.org/flora/taxa/index1.php?scientific-name="##vicia+sativa
            ## base_url_bis<-"http://luirig.altervista.org/schede/ae/"
            ## ##flower_date<-as.data.frame(names_month)
            flower_date<-list()
            for(species in species_list){
                Sys.sleep(rest)
                #species<-species_name
                #cur<-tolower(species_name)
                ## some species are found in url pattern base_url/genus+species
                ##cur<-gsub("^([A-Za-z]+) ([A-Za-z-]+).*","\\1+\\2",cur)
                ## other species are found in url pattern base_urlbis/genus_species.htm
                ## cur_bis<-gsub("^([A-Za-z]+) ([A-Za-z-]+).*","\\1_\\2",tolower(species))
                ## url<-paste(base_url,cur,sep="")
                ## url_bis<-paste(base_url_bis,cur_bis,".htm",sep="")
                ## check firt pattern
                

            ##     if(url.exists(url)){
            ##         ##flower_date<-merge(flower_date,luirig(url,species_name))
            ##             tp<-luirig(url,species_name)
            ##             for(i in 1:nrow(tp)){
            ##                 flower_date[[species]][[as.character(tp$names_month[i])]]<-tp[i,species]
            ##             }
            ##     }else{
            ##         for(i in names_month){
            ##                 flower_date[[species]][[as.character(i)]]<-NA
            ##             }
            ##     }
            ## }

                flower_date[[species]]<-luirig(species)
            }
            go<-ldply(flower_date)
            row.names(go)<-go$.id
            go<-go[,names(go)!=".id",drop=FALSE]
            go<-data.frame(go)
            res@results<-data.frame(go)
        }else{
            res@results<-NULL
        }
    }
    res@bibliography<-"Pignatti Sandro, 1982 Flora d'Italia.\nEdagricole, Bologna.\ndata retrieved from http://luirig.altervista.org/ "
    return(res)
}





