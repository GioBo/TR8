catminat<-function(species_list,TRAITS,catminat_df,similar=FALSE){
    res<-new("results")
    ## env<-new.env(parent = parent.frame())
    ## load(local_Catminat,envir = env)

    ## catminat_df<-get("catminat_df",envir=env)
    if(is.null(TRAITS)){
        res@results<-NULL
    }else{

        if(similar){

            DF<-lapply(species_list,function(x){
                catminat_df[grep(x,catminat_df$species_name),c("species_name",TRAITS)]
            }
            )
            DF<-ldply(DF)

            }else{
                DF<-catminat_df[catminat_df$species_name%in%species_list,c("species_name",TRAITS)]
                }
        ## in a few cases (e.g. Alnus viridis) some entries are double-> this causes
        ## problems -> be sure that all rows are unique
        DF<-unique(DF)
        ## In some cases (eg. see issue 73) the DF may return something like

        ##       species_name flower_colour_fr li_form_fr ell_T_fr
        ## 9068 Olea europaea            white     a-semp        9
        ## 9069 Olea europaea             <NA>     a-semp        9
        
        ## which causes problems because unique(DF) won't create a single row =>
        ## as an attempt to fix this issue we select the row that has the least NAs
        cat_NAs <- apply(DF,1,function(x){sum(is.na(x))})
        DF <- DF[which.max(cat_NAs),]
        row.names(DF)<-DF$species_name
        DF<-DF[,TRAITS,drop=FALSE]

        res@results<-DF
    }
    stringa<-"Julve, P., 1998 ff. - Baseflor. Index botanique, \303\251cologique et chorologique de la flore de France. Version : 26 November 2014 . http://perso.wanadoo.fr/philippe.julve/catminat.htm"
    Encoding(stringa)<-"unicode"
    res@bibliography<-stringa
    return(res)
}



