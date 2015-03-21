\docType{data}
\name{column_list}
\alias{column_list}
\title{column_list}
\format{Each element contains a key which express the short name for the
  traits that \code{TR8} can download and to each key a three-elements
  vector is associated, which contains a shorter code for the trait, a long
  description of the trait and the reference database \describe{
\item{ height_max}{:c( "h_max","Maximum height","Ecoflora")}
\item{ height_min}{:c( "h_min","Minimum height","Ecoflora")}
\item{ leaf_area}{:c( "le_area","Leaf area","Ecoflora")}
\item{ leaf_longevity}{:c( "le_long","Leaf longevity","Ecoflora")}
\item{ Photosynthetic_pathway}{:c( "phot_path","Photosynthetic pathway","Ecoflora")}
\item{ life_form}{:c( "li_form","Life form","Ecoflora")}
\item{ Vegetative_reprod_method}{:c("reprod_meth","Vegetative reprod method","Ecoflora")}
\item{ Flowering_earliest_month}{:c("flw_early","Flowering earliest month","Ecoflora")}
\item{ Flowering_latest_month}{:c( "flw_late","Flowering latest month","Ecoflora")}
\item{ Pollen_vector}{:c( "poll_vect","Pollen vector","Ecoflora")}
\item{ Seed_weight_mean}{:c( "seed_wght","Seed weight mean","Ecoflora")}
\item{ Method_of_propagation}{:c( "propag","Method of propagation","Ecoflora")}
\item{ Ellenberg_light_Eco}{:c( "ell_light_uk","Ellenberg light","Ecoflora")}
\item{ Ellenberg_moisture_Eco}{:c( "ell_moist_uk","Ellenberg moisture","Ecoflora")}
\item{ Ellenberg_pH_Eco}{:c( "ell_pH_uk","Ellenberg pH","Ecoflora")}
\item{ Ellenberg_nitrogen_Eco}{:c( "ell_N","Ellenberg nitrogen","Ecoflora")}
\item{ Ellenberg_salt_Eco}{:c( "ell_S","Ellenberg salt","Ecoflora")}
\item{ age_of_first_flowering}{:c( "age_first_flowering","Age of first flowering","LEDA")}
\item{ branching}{:c( "branching","Branching","LEDA")}
\item{ bud_bank_seasonality_soil}{c( "bud_bank_seasonality_soil","Bud bank seasonality at soil level","LEDA")}
\item{ buoyancy}{:c( "buoyancy","Buoyancy","LEDA")}
\item{ canopy_height}{:c( "canopy_height","Mean canopy height","LEDA")}
\item{ dispersal}{:c( "dispersal","Dispersal type","LEDA")}
\item{ leaf_distribution}{:c( "leaf_distribution","Leaf distribution along the stem","LEDA")}
\item{ leaf_dmc}{:c( "leaf_dmc","Leaf dry matter content ","LEDA")}
\item{ leaf_mass}{:c( "leaf_mass","Leaf mass","LEDA")}
\item{ leaf_size}{:c( "leaf_size","Leaf size","LEDA")}
\item{ dispersal_morphology}{:c( "dispersal_morphology","Dispersal morphology","LEDA")}
\item{ growth_form}{:c( "growth_form","Growth form","LEDA")}
\item{ life_span}{:c( "life_span","Life span","LEDA")}
\item{ releasing_height}{:c( "releasing_height","Releasing height","LEDA")}
\item{ sbank}{:c( "sbank","Seed bank","LEDA")}
\item{ seed_mass}{:c( "seed_mass","Seed mass","LEDA")}
\item{ shoot_growth_form}{:c( "shoot_growth_form","Shoot growth form","LEDA")}
\item{ seed_number_per_shoot}{:c( "seed_number_per_shoot","Seed number per shoot","LEDA")}
\item{ woodiness}{:c( "woodiness","Woodiness","LEDA")}
\item{ terminal_velocity}{:c( "terminal_velocity","Terminal velocity","LEDA")}
\item{ Life form}{:c( "li_form_B","Life form","BiolFlor")}
\item{ Life span}{:c( "li_span","Life span","BiolFlor")}
\item{ Rosettes}{:c( "ros","Rosettes","BiolFlor")}
\item{ Type of reproduction}{:c( "reprod_B","Type of reproduction","BiolFlor")}
\item{ Strategy type}{:c( "strategy","Strategy type","BiolFlor")}
\item{ Pollen vector}{:c( "poll_vect_B","Pollen vector","BiolFlor")}
\item{ L}{:c( "ell_L_it","Ellenberg value for light in Italy","Pignatti")}
\item{ T}{:c( "ell_T_it","Ellenberg value for temperature in Italy","Pignatti")}
\item{ C}{:c( "ell_C_it","Ellenberg value for continentality in Italy","Pignatti")}
\item{ U}{:c( "ell_U_it","Ellenberg value for humidity in Italy","Pignatti")}
\item{ R}{:c( "ell_R_it","Ellenberg value for soil reaction in Italy","Pignatti")}
\item{ N}{:c( "ell_N_it","Ellenberg value for nitrogen in Italy","Pignatti")}
\item{ S}{:c( "ell_S_it","Ellenberg value for salinity in Italy","Pignatti")}
\item{ life_form_P}{:c( "life_form_P","Life form for Italian Flora","Pignatti")}
\item{ corotipo}{:c( "distribution_p","Distributions of species for the Italian Flora","Pignatti")}
\item{ IT_beg_flow}{:c( "IT_beg_flow","Beginning of flowering in Italy","Pignatti")}
\item{ IT_end_flow}{:c( "IT_end_flow","End of flowering in Italy","Pignatti")}
\item{ Myco_infection}{:c( "Myco_infection","Infection of AMF according to Akhmetzhanova et al.","AMF")}
\item{ MycoFlor}{:c( "MycoFlor","Infection of AMF according to MycoFlor","AMF")}
\item{ inflorescence_fr}{:c( "inflorescence_fr","Type of inflorescence","Catminat")}
\item{ sex_reprod_fr}{:c( "sex_reprod_fr","Type of sexual reproduction","Catminat")}
\item{ poll_vect_fr}{:c( "poll_vect_fr","Pollen vector","Catminat")}
\item{ fruit_type_fr}{:c( "fruit_type_fr","Type of fruit","Catminat")}
\item{ dissemination_fr}{:c( "dissemination_fr","Type of dissemination","Catminat")}
\item{ flower_colour_fr}{:c( "flower_colour_fr","Flower colour","Catminat")}
\item{ ell_L_fr}{:c( "ell_L_fr","Ellenberg values for Light","Catminat")}
\item{ elle_T_fr}{:c( "elle_T_fr","Ellenberg values for temperature","Catminat")}
\item{ ell_C_fr}{:c( "ell_C_fr","Ellenberg values for continentality","Catminat")}
\item{ ell_U_atm_fr}{:c( "ell_U_atm_fr","Ellenberg values for atmospheric moisture","Catminat")}
\item{ ell_U_fr}{:c( "ell_U_fr","Ellenberg values for moisture","Catminat")}
\item{ ell_R_fr}{:c( "ell_R_fr","Ellenberg values for soil reaction","Catminat")}
\item{ ell_N_fr}{:c( "ell_N_fr","Ellenberg values for nitrogen","Catminat")}
\item{ ell_S_fr}{:c( "ell_S_fr","Ellenberg values for salt","Catminat")}
\item{ Soil_texture_fr}{:c( "Soil_texture_fr","Type of soil texture","Catminat")}
\item{ organic_matter_fr}{:c( "organic_matter_fr","Organic matter in the soil","Catminat")}
\item{ beg_flow_fr}{:c( "beg_flow_fr","Beginning of flowering (month)","Catminat")}
\item{ end_flow_fr}{:c( "end_flow_fr","End of flowering (month)","Catminat")}
 }}
\description{
A list containing a brief description of traits data
retrieved by the various databases; it's used as a hash table by some
internal \code{tr8} functions.
}
\examples{
## inspect the structure of the list
str(column_list)

}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\references{

\bold{BiolFlor}

Klotz, S., Kühn, I., Durka, W. (eds) (2002). BIOLFLOR - Eine Datenbank 
zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. 
Schriftenreihe für Vegetationskunde *38*: 1-333.  (Bundesamt für. Bonn, 
Bundesamt für Naturschutz)

\bold{Ecoflora}

Fitter, A . H. and Peat , H. J. (1994). The Ecological Flora
Database, J. Ecol., 82, 415-425.
\url{http://www.ecoflora.co.uk}

\bold{LEDA traitbase} Kleyer, M., Bekker, R.M., Knevel,
I.C., Bakker, J.P, Thompson, K., Sonnenschein, M.,
Poschlod, P., Van Groenendael, J.M., Klimes, L., Klimesova,
J., Klotz, S., Rusch, G.M., Hermy, M., Adriaens, D.,
Boedeltje, G., Bossuyt, B., Dannemann, A., Endels, P.,
Götzenberger, L., Hodgson, J.G., Jackel, A-K., Kühn, I.,
Kunzmann, D., Ozinga, W.A., Römermann, C., Stadler, M.,
Schlegelmilch, J., Steendam, H.J., Tackenberg, O., Wilmann,
B., Cornelissen, J.H.C., Eriksson, O., Garnier, E., Peco,
B. (2008). The LEDA Traitbase: A database of life-history
traits of Northwest European flora. Journal of Ecology 96:
1266-1274.

\bold{Akhmetzhanova et al, 2012}

Akhmetzhanova, A.A, Soudzilovskaia, N.A., Onipchenko, V.G.,
Cornwell, W. K., Agafonov, V. A., Selivanov, I.A., and Cornelissen, 
J. H. C. (2012): A rediscovered treasure: mycorrhizal intensity database for
3000 vascular plants species across the former Soviet
Union. Ecology 93:689. URL:
http://esapubs.org/Archive/ecol/E093/059/default.htm

\bold{Pignatti et al., 2005}

Pignatti, S., Menegoni, P., Pietrosanti, S. (2005).
Biondicazione attraverso le piante vascolari. Valori di
indicazione secondo Ellenberg (Zeigerwerte) per le specie
della Flora d'Italia. Braun-Blanquetia 39, Camerino, pp.
97.

\bold{Julve, 1998}

Julve, P., 1998 ff. - Baseflor. Index botanique,
écologique et chorologique de la flore de France.
Version : 26 November 2014 .
URL: http://perso.wanadoo.fr/philippe.julve/catminat.htm


}




\keyword{dataframe}

