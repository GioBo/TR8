imkerbond_get<-function(species_list,TRAITS,rest){
    env<-new.env(parent = parent.frame()) ##        env<-new.env()
    res<-new("results")
    
    if(is.null(TRAITS)){
        res@results<-NULL
    }else{

        imkerbond_check<-get("imkerbond_check",envir=env)
        ## load lookup table
        ## convert it to a data frame
        imkerbond_check<-ldply(imkerbond_check)
        
        url_dutch<-"http://users.telenet.be/imkerbondzoersel/bijenplanten.html"
        imkerbond<-readHTMLTable(url_dutch)[[1]]

        names(imkerbond)<-revalue(names(imkerbond),c( "Wetenschap. naam"="Species","Nectar"="nectar_q"))
        names(imkerbond)[length(imkerbond)]<-"poll_q"
        imkerbond<-imkerbond[,c("Species","poll_q","nectar_q")]
        imkerbond$Species<-as.character(imkerbond$Species)

        ## clean

        imkerbond<-imkerbond[!imkerbond$Species%in%c("Terug",LETTERS,"Wetenschap. naam"),]
        ## remove Tagetes patula
        imkerbond<-imkerbond[imkerbond$Species!="Tagetes patula"&imkerbond$nectar_q!="honingdauw",]
        imkerbond<-droplevels.data.frame(imkerbond)

        imkerbond$poll_q<-as.numeric(gsub("^P ","",imkerbond$poll_q))
        imkerbond$nectar_q<-as.numeric(gsub("^N ","",imkerbond$nectar_q))
        
        imkerbond$Species<-mapvalues(imkerbond$Species,imkerbond_check[,1],imkerbond_check[,2],warn_missing=FALSE)

        results<-imkerbond[imkerbond$Species%in%species_list,]
        species_list<-as.data.frame(species_list)
        results<-merge(species_list,imkerbond,by.x="species_list",by.y="Species",all.x=T)
        row.names(results)<-results$species_list
        results<-results[,TRAITS,drop=FALSE]
        res@results<-results



    }

    res@bibliography<-"http://users.telenet.be/imkerbondzoersel/"
    return(res)
    

}













