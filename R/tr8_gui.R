##' This function will make a simple GUI appear: this window containts
##' a tab  for each trait database: the user che choos which traits should be
##' downloaded from the \code{tr8} function.
##'
##' 
##' @title \code{tr8_config} a GUI to configure TR8 package.
##' @return  the function will return a list containind the selected traits for each source of information
##' @seealso tr8()
##' @author Gionata Bocci <boccigionata@@gmail.com>
##' @export tr8_config

tr8_config<-function(){
    ## Here "gWidgets::gbasicdialog" is used since it makes
    ## the window modal (ie. the script has to wait for the
    ## user's choiche before moving on)

    ## get the list of traits 
    ## data(column_list)
    ## convert it to a data frame
    env<-new.env()
    data("column_list",envir=env)
    column_list<-get("column_list",envir = env)
    
    temp_dframe<-ldply(column_list)
    names(temp_dframe)<-c("long_code","short_code","description","db")

    ## get traits for ecoflora
    temp_Ecoflora<-temp_dframe[temp_dframe$db=="Ecoflora",c("long_code","description")]
    ## get traits for pignatti
    temp_Pignatti<-temp_dframe[temp_dframe$db=="Pignatti",c("long_code","description")]
    ## get traits for biolflor
    temp_BiolFlor<-temp_dframe[temp_dframe$db=="BiolFlor",c("long_code","description")]
    ## get traits for leda
    temp_LEDA<-temp_dframe[temp_dframe$db=="LEDA",c("long_code","description")]
    ## get traits for AMF
    temp_AMF<-temp_dframe[temp_dframe$db=="AMF",c("long_code","description")]

    ## create the main MODAL window
    window<-gbasicdialog(title="Traits selector for TR8")
    glabel("\nSelect the traits you want to download \nfrom the various databases\n",container=window)
    ## create a group which will containt sheets
    g<-ggroup(container=window)
    ## create a 'notebook' object which contains different sheets
    nb=gnotebook(container=window)
    ## create a sheet of traits for 'biolflor' 
    res_BiolFlor<-gcheckboxgroup(temp_BiolFlor$description,container=nb,label="BiolFlor")
    ## create a sheet of traits for 'leda' 
    res_LEDA<-gcheckboxgroup(temp_LEDA$description,container=nb,label="LEDA")
    res_Ecoflora<-gcheckboxgroup(temp_Ecoflora$description,container=nb,label="Ecoflora")
    res_Pignatti<-gcheckboxgroup(temp_Pignatti$description,container=nb,label="Pignatti")
    res_AMF<-gcheckboxgroup(temp_AMF$description,container=nb,label="AMF")
    visible(window,TRUE)

    
    res_BiolFlor<-svalue(res_BiolFlor)
    res_LEDA<-svalue(res_LEDA)
    res_Ecoflora<-svalue(res_Ecoflora)
    res_Pignatti<-svalue(res_Pignatti)
    res_AMF<-svalue(res_AMF)

    
    res_BiolFlor<-fix_values(res_BiolFlor,temp_BiolFlor)
    res_LEDA<-fix_values(res_LEDA,temp_LEDA)
    res_Ecoflora<-fix_values(res_Ecoflora,temp_Ecoflora)
    res_Pignatti<-fix_values(res_Pignatti,temp_Pignatti)
    res_AMF<-fix_values(res_AMF,temp_AMF)

    
    traits_list<-list("BiolFlor"=res_BiolFlor,"LEDA"=res_LEDA,"Ecoflora"=res_Ecoflora,"Pignatti"=res_Pignatti,"AMF"=res_AMF)
    return(traits_list)

}

fix_values<-function(TEMP_VAR,DF){
    
    if(length(TEMP_VAR)==0){
        TEMP_VAR<-c()}else{
    TEMP_VAR<-with(DF,long_code[description%in%TEMP_VAR])
     }
    
    return(TEMP_VAR)
}
