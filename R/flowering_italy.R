

luirig<-function(species){
    ## The website provides flowering periods with month expressed
    ## as roman numbers, thus a lookup table is needed for
    ## conversion purposes

    ##lookup_month<-data.frame(code=c(1:12,"NA"),roman=c("I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"," "),stringsAsFactors = T)
    lookup_month<-data.frame(code=c(1:12),roman=c("I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"),stringsAsFactors = T)
    base_url<-"http://luirig.altervista.org/flora/taxa/floraspecie.php?genere="
    ## a single page contains all the data for all the species belonging to the same genus
    genus<-gsub("(^[a-zA-Z]+) .*","\\1",species,useBytes = TRUE)
    url<-paste(base_url,genus,sep = "")
    RES<-list()
    ## check if the URL exists
    if(url.exists(url)){
        RES<-list()
        ## download the data in the form of a R-list
        tables<-readHTMLTable(url)
        ## extract the data in the form of a data frame
        tabella<-tables[[1]]

        
        tmp_table<-tabella[,"Nome scientifico",drop=F]
        tmp_table$"Nome scientifico"<-as.character(tmp_table$"Nome scientifico")
        ## get the names listed in luirig (avoiding synonims)
        ## and add them back to the temporary downloaded dataframe
        tp<-strsplit(as.character(tmp_table$"Nome scientifico"),"\n")
        tp<-unlist(lapply(tp,function(x)x[[1]]))
        tmp_table$nomi<-gsub("^\\s*[0-9]+\\)\\s+(.+)$","\\1",tp)

        ## check if our species of interest is present in the downloaded webpage
        TEST<-grep(species,tmp_table$nomi)
        if(length(TEST)>0){

            ## in case the species is present, retain only those species
            ##  which contain its name (this is a first selection)
            subtab<-tmp_table[TEST,,drop=FALSE]

            ## calculate beginning a end of flowering for these species
            ## and add their values as columns to the table
            begin_fl<-lapply(subtab$"Nome scientifico",function(x){
                if(length(grep("Fiorit:-",x))!=0){
                    value<-NA}else{
                    value<-gsub(".*Fiorit:([IVX]+)-([IVX]*)Tipo.*","\\1",x)
                }
                value
            }
            )
            
            end_fl<-lapply(subtab$"Nome scientifico",function(x){
                if(length(grep("Fiorit:-",x))!=0){
                    value<-NA}else{
                    value<-gsub(".*Fiorit:([IVX]+)-([IVX]*)Tipo.*","\\2",x)
                }
                value
            }
            )

            ## change roman numbers (for months) to arabic
            subtab$IT_beg_fl<-mapvalues(unlist(begin_fl),lookup_month$roman,lookup_month$cod,warn_missing=FALSE)
            subtab$IT_end_fl<-mapvalues(unlist(end_fl),lookup_month$roman,lookup_month$cod,warn_missing=FALSE)

            ## chech what is the complete name of our species of interest (with
            ## author names, since this is the format used on luirigi website)
            specie_check<-gnr_resolve(species,data_source_ids = 11,best_match_only = T,highestscore = TRUE)$results
            ## check data for our species (with its complete name) are available
            ## in the downloaded dataframe
            res<-specie_check$matched_name[specie_check$score>0.9]

            if(length(res)==0){
                RES[[species]]["IT_beg_flow"]=NA
                RES[[species]]["IT_end_flow"]=NA
            }else{
                RES[[species]]["IT_beg_flow"]=subtab$IT_beg_fl[subtab$nomi==res]
                RES[[species]]["IT_end_flow"]=subtab$IT_end_fl[subtab$nomi==res]
            }

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





