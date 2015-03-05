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
    stringa<-"Hempel, S., G\303\266tzenberger, L., K\303\274hn. I., Michalski, S.G.,\n Rillig, M.C., Zobel, M., and Moora, M., 2013. Mycorrhizas in the Central European flora:\n relationships with plant life history traits and ecology. Ecology 94: 1389-1399.\n"
    Encoding(stringa)<-"unicode"
    res@bibliography<-stringa
    return(res)
}
