brot<-read.delim("http://www.uv.es/jgpausas/brot/BROT_2013.06_data.txt",sep="\t",header=T)
brot$Data<-as.character(brot$Data)

brot_aggregate<-function(x){

    ## check if numeric data are available in the
    ## sub-vector passed to aggregate
    numeric_data<-x[grep("[0-9]+\\.[0-9]+",x)]

    ## if true, then use those numeric data
    ## instead of the qualitative ones
    
    if(length(numeric_data)>0){

        ## some data are in the form "0.6-0.9", thus we need to
        ## split the two numbers ...
        
        numeric_data<-strsplit(numeric_data,"-")

        ## .. convert both from string to numbers and
        ## calculate their mean

        numeric_data<-unlist(lapply(numeric_data,function(Z){mean(as.numeric(Z))}))
        res<-mean(numeric_data)

    }else{

        ## if we have only categorical variable, I propose to take only
        ## the most frequent levels
        tavola<-table(x)
        res<-names(which(tavola==max(tavola)))
        res<-paste(unlist(res),collapse=", ")

        res<-unlist(res)
    }

        return(unlist(res))
}



brot<-aggregate(Data~taxa+Trait+Region2,brot,FUN="brot_aggregate")
table(brot[,1:3])
