retrieve_MycoFlor<-function(species,TRAITS,rest,data_myco){

    res<-new("results")
    if(is.null(TRAITS)){
        results<-NULL
    }else{
        temp_df<-data_myco[data_myco$Plant.species%in%species,]
        row.names(temp_df)<-temp_df$Plant.species
        res_df<-data.frame(temp_df[,"Mycorrhizal.status",drop=FALSE])
        names(res_df)<-"MycoFlor"
        results<-res_df
    }
    res@results<-results
    ## remove(list=c("myco"),pos =".GlobalEnv")
    stringa<-"Stefan Hempel, Lars G\303\266tzenberger, Ingolf K\303\274hn, Stefan G. Michalski,\n Matthias C. Rillig, Martin Zobel, and Mari Moora. 2013. Mycorrhizas in the Central European flora:\n relationships with plant life history traits and ecology. Ecology 94: 1389-1399.\n"
    Encoding(stringa)<-"unicode"
    res@bibliography<-stringa
    return(res)
}
