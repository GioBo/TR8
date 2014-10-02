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
    temp_ECOFLORA<-temp_dframe[temp_dframe$db=="Ecoflora",c("long_code","description")]
    ## get traits for pignatti
    temp_PIGNATTI<-temp_dframe[temp_dframe$db=="Pignatti",c("long_code","description")]
    ## get traits for biolflor
    temp_Biolflor<-temp_dframe[temp_dframe$db=="BiolFlor",c("long_code","description")]
    ## get traits for leda
    temp_LEDA<-temp_dframe[temp_dframe$db=="LEDA",c("long_code","description")]
    ## get traits for AMF
    ## temp_AMF<-temp_dframe$description[temp_dframe$db=="Akhmetzhanova et al."|temp_dframe$db=="Giovannetti et al."]
    temp_AMF<-temp_dframe[temp_dframe$db=="Akhmetzhanova",c("long_code","description")]

    ## create the main MODAL window
    window<-gbasicdialog(title="Traits selector for TR8")
    glabel("\nSelect the traits you want to download \nfrom the various databases\n",container=window)
    ## create a group which will containt sheets
    g<-ggroup(container=window)
    ## create a 'notebook' object which contains different sheets
    nb=gnotebook(container=window)
    ## create a sheet of traits for 'biolflor' 
    res_Biolflor<-gcheckboxgroup(temp_Biolflor$description,container=nb,label="Biolflor")
    ## create a sheet of traits for 'leda' 
    res_LEDA<-gcheckboxgroup(temp_LEDA$description,container=nb,label="LEDA")
    res_ECOFLORA<-gcheckboxgroup(temp_ECOFLORA$description,container=nb,label="ECOFLORA")
    res_PIGNATTI<-gcheckboxgroup(temp_PIGNATTI$description,container=nb,label="Pignatti")
    res_AMF<-gcheckboxgroup(temp_AMF$description,container=nb,label="AMF")
    visible(window,TRUE)

    
    res_Biolflor<-svalue(res_Biolflor)
    res_LEDA<-svalue(res_LEDA)
    res_ECOFLORA<-svalue(res_ECOFLORA)
    res_PIGNATTI<-svalue(res_PIGNATTI)
    res_AMF<-svalue(res_AMF)

    
    res_Biolflor<-fix_values(res_Biolflor,temp_Biolflor)
    res_LEDA<-fix_values(res_LEDA,temp_LEDA)
    res_ECOFLORA<-fix_values(res_ECOFLORA,temp_ECOFLORA)
    res_PIGNATTI<-fix_values(res_PIGNATTI,temp_PIGNATTI)
    res_AMF<-fix_values(res_AMF,temp_AMF)

    
    traits_list<-list("Biolflor"=res_Biolflor,"LEDA"=res_LEDA,"ECOFLORA"=res_ECOFLORA,"PIGNATTI"=res_PIGNATTI,"AMF"=res_AMF)
    return(traits_list)

}

fix_values<-function(TEMP_VAR,DF){
    
    if(length(TEMP_VAR)==0){
        TEMP_VAR<-c()}else{
    TEMP_VAR<-with(DF,long_code[description%in%TEMP_VAR])
     }
    
    return(TEMP_VAR)
}
