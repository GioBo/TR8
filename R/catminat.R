
library(gdata)
library(plyr)
library(reshape)

##baseflor<-read.csv("
tmp<- "/home/gionata/Work/src/tr8_github/catminat/baseflor.xlsx"
tmp_csv<-"/home/gionata/Work/src/tr8_github/catminat/baseflor.csv"
## baseflor<-readWorksheetFromFile(file = tmp, sheet = "baseflor",header = TRUE, startRow = 1, startCol = 11, endCol = 12)
## baseflor<-read.csv(tmp_csv,header = TRUE,sep="|",check.names=FALSE,stringsAsFactors=FALSE)
baseflor<-read.xls (tmp, sheet = 1, header=T,method="tab")

## I create a copy of baseflor called go
go<-baseflor

catminat_replace<-function(origin,change){
    
    origin<-as.character(origin)

    for(i in names(change)){
        origin<-gsub(i,change[i],origin)
    }
    return(origin)
}



## I choose only a subset of the available columns in baseflor dataset

selected_columns_catminat<-c(
    "species_name",
    "CHOROLOGIE",
    "inflorescence",
    "sex_reprod",
    "order_of_maturation",
    "poll_vect_fr",
    "fruit_type",
    "dissemination",
    "flower_colour_fr",
    "macule",
    "type_ligneux",
#    "Hauteur_végétative_maximum_.m.",
    "TYPE_BIOLOGIQUE",
    "ell_L_fr",
    "elle_T_fr",
    "ell_C_fr",
    "ell_U_atm_fr",
    "ell_U_fr",
    "ell_R_fr",
    "ell_N_fr",
    "ell_S_fr",
    "Soil_texture_fr",
    "organic_matter_fr",
    "FR_beg_flow",
    "FR_end_flow"

    )

go$species_name<-as.character(go$species_name)
## change columns' name in order to
## avoid possible conflicts with non-ascii
## french chars
recode_catminat_values<-c("Lumi.{1}re"="ell_L_fr",
                          "Temp.{1}rature"="elle_T_fr",
                          "Continentalit.{1}"="ell_C_fr",
                          "Humidit.{1}_.{1}daphique"="ell_U_fr",
                          "R.{1}action_du_sol_.pH."="ell_R_fr",
                          "Niveau_trophique"="ell_N_fr",
                          "Salinit.*"="ell_S_fr",
                          "Texture"="Soil_texture_fr",
                          "Mati.*re_organique"="organic_matter_fr",
                          "Humidit.*_atmosph.*rique"="ell_U_atm_fr",
                          "pollinisation"="poll_vect_fr",
                          "diss.*mination"="dissemination",
                          "couleur_fleur"="flower_colour_fr",
                          "fruit"="fruit_type",
                          "sexualit.*"="sex_reprod",
                          "ordre_maturation"="order_of_maturation",
#                          "NOM_SCIENTIFIQUE"="species_name"
                          "Nom.Phytobase"="species_name"
                          )

for(i in names(recode_catminat_values)){
    names(go)<-gsub(i,recode_catminat_values[i],names(go))

}



## I split flowering dates into 2 columns,
## flower begin and end

flowering<-as.character(go$floraison)
FR_beg_flow<-as.numeric(gsub("^([0-9]+)+\\-([0-9])+$","\\1",flowering))
FR_end_flow<-as.numeric(gsub("^([0-9]+)+\\-([0-9])+$","\\2",flowering))
go<-data.frame(go,FR_beg_flow,FR_end_flow)


go<-go[,selected_columns_catminat]



## recode fruit types
fruit_types=c("ak.{1}ne"="achene",
    "baie"="berry",
    "capsule"="capsule",
    "caryopse"="caryopsis",
    "c.{1}ne"="cone",
    "drupe"="drupe",
    "follicule"="follicle",
    "gousse"="legume",
    "pyxide"="pyxid",
    "samare"="samara",
    "silique"="silique"  
    )

go$fruit_type<-catminat_replace(go$fruit_type,fruit_types)

## recode flower colours
flower_colours<-c("blanc"="white",
                  "jaune"="yellow",
                  "vert"="green",
                  "marron"="brown",
                  "bleu"="blue",
                  "jaune"="yellow",
                  "jauna"="yellow",
                  "noir"="black"
                  )

go$flower_colour_fr<-catminat_replace(go$flower_colour_fr,flower_colours)

## recode dissemination types
dissemination<-c(
    "an.*mochore"="anemochores",
    "myrm.*cochore"="myrmecochores",
    "myrm.*cochore"="myrmecochores",
    "autochore"="autochores",
    "barochore"="barochores",
    "endozoochore"="endozoochores",
    "endozoochorie"="endozoochores",
    ".+pizoochore"="epizoochores",              
    "dyszoochore"="dyszoochores", 
    "hydrochore"="hydrochores"                             
    )

go$dissemination<-catminat_replace(go$dissemination,dissemination)

## recode sexual reproduction types
sex_reprod<-c(
    "androdio.{1}que"="Androdioecy",
    "gynomono.{1}que" ="Gynomonoecious",
    "gynodio.{1}que"="Gynodioecious",
    "polygame"="Polygamous",
    "mono.{1}que"="Monoecious",
    "dio.{1}que"="Dioecious",
    "hermaphrodite"="Hermaphroditic",
    "polygame"="Polygamous"
    )

go$sex_reprod<-catminat_replace(go$sex_reprod,sex_reprod)

## remove species names where the phrase
## "sans nom" is found
go<-go[grep("sans nom",go$species_name,invert=TRUE),]

##############

go$species_name<-gsub("\\s+\\[.*$","",go$species_name,perl=TRUE)
go$species_name<-gsub("&amp","&",go$species_name,perl=TRUE)
go$species_name<-gsub(";","",go$species_name,perl=TRUE)
go$species_name<-gsub("\\s+\\*$","",go$species_name,perl=TRUE)

go$species_name<-gsub("\\s+A$","",go$species_name,perl=TRUE)
go$species_name<-gsub("\\s+B$","",go$species_name,perl=TRUE)

##dai<-gsub("\\s+\\[.*$","",go$species_name,perl=TRUE)
##dai<-gsub("&amp","&",dai)
##dai<-gsub(";","",dai)
##dai<-gsub("\\s+\\*$","",dai)
## dai<-gsub("\\s+A$","",dai)
## dai<-gsub("\\s+B$","",dai)
## dai<-gsub("\\s+\\*$","",dai)

## some species (eg. Gaudinia fragilis) have some
## double entries
table(dai)->vai
names(vai[vai>1])


aggre<-function(vec){
    return(paste(sort(unique(vec)),sep="-"))
}

go<-go[go$species_name!="",]
go<-aggregate(go,by=list(go$species_name),FUN=aggre)






