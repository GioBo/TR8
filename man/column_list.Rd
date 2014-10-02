\docType{data}
\name{column_list}
\alias{column_list}
\title{column_list}
\format{Each element contains a key which express the short name for the
  traits that \code{TR8} can download and to each key a three-elements
  vector is associated, which contains a shorter code for the trait, a long
  description of the trait and the reference database \describe{
\item{height_max}{: c(h_max,maximum height,Ecoflora)}
\item{height_min}{: c(h_min,minimum height,Ecoflora)}
\item{leaf_area}{: c(le_area,leaf area,Ecoflora)}
\item{leaf_longevity}{: c(le_long,leaf longevity,Ecoflora)}
\item{Photosynthetic_pathway}{: c(phot_path,photosynthetic pathway,Ecoflora)}
\item{life_form}{: c(li_form,life form,Ecoflora)}
\item{Vegetative_reprod_method}{: c(reprod_meth,vegetative reprod method,Ecoflora)}
\item{Flowering_earliest_month}{: c(flw_early,flowering earliest month,Ecoflora)}
\item{Flowering_latest_month}{: c(flw_late,Flowering_latest_month,Ecoflora)}
\item{Pollen_vector}{: c(poll_vect,pollen vector,Ecoflora)}
\item{Seed_weight_mean}{: c(seed_wght,seed weight mean,Ecoflora)}
\item{Method_of_propagation}{: c(propag,Method of propagation,Ecoflora)}
\item{Ellenberg_light_Eco}{: c(ell_light_uk,Ellenberg light,Ecoflora)}
\item{Ellenberg_moisture_Eco}{: c(ell_moist_uk,Ellenberg moisture,Ecoflora)}
\item{Ellenberg_pH_Eco}{: c(ell_pH_uk,Ellenberg pH,Ecoflora)}
\item{Ellenberg_nitrogen_Eco}{: c(ell_N,Ellenberg nitrogen,Ecoflora)}
\item{Ellenberg_salt_Eco}{: c(ell_S,Ellenberg salt,Ecoflora)}
\item{canopy_height.m}{: c(c_height,canopy height in [m],LEDA)}
\item{mean.SLA..mm.2.mg.}{: c(SLA,mean specific leaf area [mm^2 m-1],LEDA)}
\item{mean.SM..mg.}{: c(SM,mean seed mass,LEDA)}
\item{plant.growth.form}{: c(g_form,plant growth form,LEDA)}
\item{dispersal.type}{: c(disp_type,plant dispersal type,LEDA)}
\item{Life.form}{: c(li_form_B,life form,BiolFlor)}
\item{Life.span}{: c(li_span,life span,BiolFlor)}
\item{Rosettes}{: c(ros,Rosettes,BiolFlor)}
\item{Type.of.reproduction}{: c(reprod_B,Type of reproduction,BiolFlor)}
\item{Strategy.type}{: c(strategy,Strategy type,BiolFlor)}
\item{Pollen.vector}{: c(poll_vect_B,Pollen vector,BiolFlor)}
\item{Flower.class.after.MUELLER}{: c(flw_muell,Flower class after MUELLER,BiolFlor)}
\item{Begin.of.flowering..months.}{: c(flw_beg,Begin of flowering months.,BiolFlor)}
\item{End.of.flowering..months.}{: c(flw_end,End of flowering months,BiolFlor)}
\item{Duration.of.flowering..months.}{: c(flw_dur,Duration of flowering months,BiolFlor)}
\item{Number.of.flowering.phases}{: c(flw_ph,Number of flowering phases,BiolFlor)}
\item{L}{: c(ell_L_it,ellenberg value for light in Italy,Pignatti et al.)}
\item{T}{: c(ell_T_it,ellenberg value for temperature in Italy,Pignatti et al.)}
\item{C}{: c(ell_C_it,ellenberg value for continentality in Italy,Pignatti et al.)}
\item{U}{: c(ell_U_it,ellenberg value for humidity in Italy,Pignatti et al.)}
\item{R}{: c(ell_R_it,ellenberg value for soil reaction in Italy,Pignatti et al.)}
\item{N}{: c(ell_N_it,ellenberg value for nitrogen in Italy,Pignatti et al.)}
\item{S}{: c(ell_S_it,ellenberg value for salinity in Italy,Pignatti et al.)}
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
}

\keyword{dataframe}

