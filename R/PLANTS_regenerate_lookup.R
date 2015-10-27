## ## url<-"http://bricol.net/downloads/data/PLANTSdatabase/09-02-02PLANTSdata.csv"
## PLANTS<-read.table(url,fileEncoding="iso-8859-1")

## PLANTS<-read.table("~/Downloads/09-02-02PLANTSdata.csv",fileEncoding="iso-8859-1")

## ## remove commas in species names since they conflict with TNRS

## PLANTS$Scientific.Name<-as.character(PLANTS$Scientific.Name)
## PLANTS$Scientific.Name<-gsub(","," ",PLANTS$Scientific.Name)

## go<-tnrs(PLANTS$Scientific.Name ,source = "iPlant_TNRS")
## go$score<-as.numeric(go$score)
## dai<-go[,c("submittedname","acceptedname","score","matchedname","authority")]
## dai<-dai[dai$score>=.6,]
## names(dai)<-revalue(names(dai),c("submittedname"="Scientific.Name"))
## ref_PLANTS<-merge(dai,PLANTS)

## ref_PLANTS<-ref_PLANTS[,c("acceptedname","score","matchedname","authority","Symbol","Synonym.Symbol")]

##save(file="~/Work/src/tr8_github/data/ref_PLANTS.rda",ref_PLANTS)
