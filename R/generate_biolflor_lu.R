############################################################
## Script needed to create the look_up table containing   ##
## Species name and the corresponding URL on the BiolFlor ##
## Website                                                ##
############################################################


## function called to retrieve name of genus/species and the
## corresponding url
extract_biolflor<-function(url,replaced,replacement){

    ## download raw html
    pag<-htmlParse(getURL(url))

    ## for genus/specie the nodes of interest are those
    ## with class="contentilink", thus we extract only
    ## those from the html
    raw_source<-xpathApply(pag,"//*[@class='contentlink']")

    ## from the extracted tree we retrieve, for each element
    ## the name of the species/genus and its url, and store the
    ## result in a list
    list_extracted<-sapply(raw_source, function(el) {
        return(list(c(xmlValue(el),xmlGetAttr(el, "href"))))
    }
                           )
    ## the list is converted to a data.frame
    df_extracted<-ldply(list_extracted)
    ## on the raw html only 'relative' URLs are present, thus
    ## they need to be made "absolute"
    df_extracted$V2<-gsub(replaced,replacement,df_extracted$V2)
    ## the resultin data.frame is returned
    return(df_extracted)
}


store_biolflor <- function(directory){
    url_genus<-"http://www2.ufz.de/biolflor/overview/gattung.jsp"
    replaced="^\\."
    replace_genus="http://www2.ufz.de/biolflor/overview"
    replace_species="http://www2.ufz.de/biolflor/"



    ## extract data.frame containing genera and their urls
    genera<-extract_biolflor(url_genus,replaced,replace_genus)
    ## an empty dataframe is created which will contain species names
    ## and their urls
    biolflor_lu<-data.frame(V1=character(0),V2=character(0))


    ## the dataframe is filled in with this loop
    ## DO NOT RUN (it takes time)
    for(i in genera$V2){
        ext<-extract_biolflor(i,replaced,replace_species)
        biolflor_lu<-rbind(biolflor_lu,ext)}




    biolflor_lu<-data.frame(biolflor_lu,name=(gsub("^((X [a-zA-Z]+ [a-zA-Z\\-]+)|([a-zA-Z]+ [a-zA-Z\\-]+)|([a-zA-Z]+ x [a-zA-Z\\-]+)) .*","\\1",biolflor_lu$V1,perl=F)))
    biolflor_lu$name<-as.character(biolflor_lu$name)


    ## REMEMBER TO REMOVE "annotations" COLUMN FROM ALL THE
    ## DATAFRAMES!!!!!!!!!
    ## OTHERWISE YOU'LL HAVE PROBLEMS WITH RCMD check





    ##save(biolflor_lu,file="../data/biolflor_lu.rda")
    save(file=file.path(directory,"biolflor_lu.rda"),biolflor_lu)
    ## From species names we now extract only Genus and Species
    ## (It's easier this way to work with TNRS)

    biolflor_check<-tnrs(biolflor_lu$name,source="iPlant_TNRS",verbose=FALSE)
    save(file=file.path(directory,"biolflor_check.rda"),biolflor_check)
    biolflor_lookup<-merge(biolflor_check[,1:6],biolflor_lu,by.x="submittedname",by.y="name")
    save(file=file.path(directory,"biolflor_lookup.rda"),biolflor_lookup)
    return()
}
