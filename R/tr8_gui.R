##' This function will make a simple html page appear: the web page contains
##' a tab  for each trait database: the user che choose which traits should be
##' downloaded via the \code{tr8} function.
##'
##' 
##' @title \code{tr8_config} an html page to configure TR8 package.
##' @return  the function will return a list containind the selected traits for each source of information
##' @seealso tr8()
##' @author Gionata Bocci <boccigionata@@gmail.com>
##' @export tr8_config

tr8_config<-function(){

    ## get the list of traits 
    ## data(column_list)
    ## convert it to a data frame
    env<-new.env()
    data("column_list",envir=env)
    column_list<-get("column_list",envir = env)
    
    temp_dframe<-ldply(column_list)
    names(temp_dframe)<-c("long_code","short_code","description","db")

    ## runs the shiny app that shows the page for interactively
    ## selecting traits
    appDir <- system.file("shiny_interface", "myApp", package = "TR8")
    if (appDir == "") {
        stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
    }
    gui_chosen <- shiny::runApp(appDir, display.mode = "normal")

    results_gui <- list()
    if(!is.null(gui_chosen$BiolFlor)){
        res <- c(with(temp_dframe,long_code[db=="BiolFlor"&description%in%gui_chosen$BiolFlor]))
        results_gui[["BiolFlor"]] <- res}
    if(!is.null(gui_chosen$Ecoflora)){
        res <- c(with(temp_dframe,long_code[db=="Ecoflora"&description%in%gui_chosen$Ecoflora]))
        results_gui[["Ecoflora"]] <- res}

    if(!is.null(gui_chosen$Pignatti)){
        res <- c(with(temp_dframe,long_code[db=="Pignatti"&description%in%gui_chosen$Pignatti]))
        results_gui[["Pignatti"]] <- res}

        if(!is.null(gui_chosen$LEDA)){
        res <- c(with(temp_dframe,long_code[db=="LEDA"&description%in%gui_chosen$LEDA]))
        results_gui[["LEDA"]] <- res}

        if(!is.null(gui_chosen$AMF)){
        res <- c(with(temp_dframe,long_code[db=="AMF"&description%in%gui_chosen$AMF]))
        results_gui[["AMF"]] <- res}

        if(!is.null(gui_chosen$Catminat)){
        res <- c(with(temp_dframe,long_code[db=="Catminat"&description%in%gui_chosen$Catminat]))
        results_gui[["Catminat"]] <- res}

        if(!is.null(gui_chosen$Imkerbond)){
        res <- c(with(temp_dframe,long_code[db=="Imkerbond"&description%in%gui_chosen$Imkerbond]))
        results_gui[["Imkerbond"]] <- res}

        if(!is.null(gui_chosen$BROT)){
        res <- c(with(temp_dframe,long_code[db=="BROT"&description%in%gui_chosen$BROT]))
        results_gui[["BROT"]] <- res}

        if(!is.null(gui_chosen$efloracal)){
        res <- c(with(temp_dframe,long_code[db=="EFlora_Cal"&description%in%gui_chosen$efloracal]))
        results_gui[["efloracal"]] <- res}

        if(!is.null(gui_chosen$PLANTS)){
        res <- c(with(temp_dframe,long_code[db=="PLANTS"&description%in%gui_chosen$PLANTS]))
        results_gui[["PLANTS"]] <- res}
        ## traits_list<-list("BiolFlor"=res_BiolFlor,"LEDA"=res_LEDA,"Ecoflora"=res_Ecoflora,"Pignatti"=res_Pignatti,"AMF"=res_AMF,"Catminat"=res_Catminat,"Imkerbond"=res_Imkerbond,"BROT"=res_BROT,"PLANTS"=res_PLANTS,"efloracal"=res_efloracal)
    ## return(traits_list)

    return(results_gui)
}

fix_values<-function(TEMP_VAR,DF){
    
    if(length(TEMP_VAR)==0){
        TEMP_VAR<-c()}else{
    TEMP_VAR<-with(DF,long_code[description%in%TEMP_VAR])
     }
    
    return(TEMP_VAR)
}




## this function is called by the shiny ui.R script: it gives the list
## of traits available in each database, so that a user selection list
## can be inserted in the html shiny page
##' @export list_traits_shiny
list_traits_shiny <- function(db_interest){
    env<-new.env()
    data("column_list",envir=env)
    column_list<-get("column_list",envir = env)
    
    temp_dframe<-ldply(column_list)
    names(temp_dframe)<-c("long_code","short_code","description","db")

    temp_df<-temp_dframe[temp_dframe$db==db_interest,c("long_code","description")]

    return(temp_df$description)

}

