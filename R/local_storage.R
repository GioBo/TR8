##' local_storage will download traits data from LEDA and Akhmetzhanova databases
##' and store them in a local folder.
##'
##' Downloading data from the web is time consuming, thus a local storage of some
##' traits data will speed up future data requests; this is possible for LEDA and 
##' Akhmetzhanova databases. The function must be run only once (ideally before running
##' the \code{tr8} function for the first time): thanks to the
##' \code{rappdirs} package, the downloaded data will be stored in the directory
##' commonly used for \code{user data} (which depends on the Operatim System where
##' \code{R} is running). Users can change the destination folder through the \code{directory}
##' parameters, passing the full path of the directory to be used by the function.
##'
##' 
##' @title A utility to storage a local copy of traits data 
##' @param directory the directory where the local Rda files will be stored;
##' default is NULL;
##' @return nothing
##' @author Gionata Bocci <boccigionata@@gmail.com>>
local_storage<-function(db=c("LEDA","AMF"),directory){

    dir.create(directory,showWarnings=FALSE)

    
    ## download AMF data
    if("AMF"%in%db){
        myco_url <- "http://esapubs.org/Archive/ecol/E093/059/myco_db.csv"
        myco<- tryCatch(read.csv(myco_url,sep=",",header=T),
                        error=function(res){
                            message("URL does not seem to exist:")
                            return(NA)},
                        warning=function(res){
                            message("URL does not seem to exist:")
                            return(NA)
                        } )
        save(file=paste(directory,"myco.Rda",sep="/"),myco,precheck = F) 
    }
    
    if("LEDA"%in%db){
        ## download LEDA data
        leda_download_to_local_directory(directory)
    }
}
