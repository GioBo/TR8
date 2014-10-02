
leda_download_to_local_directory<-function(){
    gmessage(title="","Downloading LEDA files is a time-consuming activity, \nthus you are suggested to download the dataset once\nand store them in a local directory.\n\nYou will now be asked to choose such a directory.")
    directory<-gfile(type="selectdir")
    ## load the list containing the data (url, names, etc..) of the txt files
    ## data(leda_lookup)
    ## convert it to a dframe
    env<-new.env(parent = parent.frame())
    data(leda_lookup,envir=env)
    leda_lookup<-get("leda_lookup",envir=env)
    DF<-ldply(leda_lookup)
    ## build the first dataframe
    first<-leda_download(url=DF[1,2],skip_row=DF[1,3],column=DF[1,4],out_name=DF[1,5])
    rearranged<-first
    ## download all the other txt files and merge each one to the
    ## previous one
    for(i in 2:nrow(DF)){
        temp<-leda_download(url=DF[i,2],skip_row=DF[i,3],column=DF[i,4],out_name=DF[i,5])
        rearranged<-merge(rearranged,temp,by.x=0,by.y=0,all.x=TRUE,all.y=TRUE)
        row.names(rearranged)<-rearranged$Row.names
        rearranged<-rearranged[,2:ncol(rearranged)]
    }
    ## save the compleate dataset in a file called "leda_database.Rda"
    ## in the directory chosen by the user
    remove(list=c("leda_lookup"), envir = env)    
    save(file=paste(directory,"leda_database.Rda",sep="/"),rearranged)
}
