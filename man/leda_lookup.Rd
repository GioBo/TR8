\name{leda_lookup}
\alias{leda_lookup}
\docType{data}
\title{
  List with reference variables needed to download traits from LEDA Traitbase
}
\description{
  Contains useful references for the LEDA Traitbase: these
  data are used by the TR8 package to find URLs of the different
  \code{.txt} files containing the raw data.
}
\usage{data(leda_lookup)}
\format{
  Each element contains a key which express the short name for the
  traits of interest (to be retrieved from the LEDA Traitbase), to each key a four-elements
  vector is associated, which contains the name of the \code{.txt} files
  hosted at the LEDA website which containts the trait data, a
  \code{int} which expresses the number of rows to be skipped when
  reading the \code{txt} file, a longer code for the trait, a short code
  for the trait.
\describe{
\item{age_of_first_flowering   }{} 
\item{branching                }{} 
\item{bud_bank_seasonality_soil}{} 
\item{buoyancy                 }{} 
\item{canopy_height            }{} 
\item{dispersal                }{} 
\item{leaf_distribution        }{} 
\item{leaf_dmc                 }{} 
\item{leaf_mass                }{} 
\item{leaf_size                }{} 
\item{dispersal_morphology     }{} 
\item{growth_form              }{} 
\item{life_span                }{} 
\item{releasing_height         }{} 
\item{sbank                    }{} 
\item{seed_mass                }{} 
\item{shoot_growth_form        }{} 
\item{seed_number_per_shoot    }{} 
\item{woodiness                }{} 
\item{terminal_velocity        }{} 
}
}

\source{

\samp{http://www.leda-traitbase.org/LEDAportal/citation.jsp}
}
\references{
Please cite the following reference any time you use data
retrieved from the LEDA traitbase:

Kleyer, M., Bekker, R.M., Knevel, I.C., Bakker, J.P,
Thompson, K., Sonnenschein, M., Poschlod, P., Van
Groenendael, J.M., Klimes, L., Klimesova, J., Klotz, S.,
Rusch, G.M., Hermy, M., Adriaens, D., Boedeltje, G.,
Bossuyt, B., Dannemann, A., Endels, P., Götzenberger, L.,
Hodgson, J.G., Jackel, A-K., Kühn, I., Kunzmann, D.,
Ozinga, W.A., Römermann, C., Stadler, M., Schlegelmilch,
J., Steendam, H.J., Tackenberg, O., Wilmann, B.,
Cornelissen, J.H.C., Eriksson, O., Garnier, E., Peco, B.
(2008): The LEDA Traitbase: A database of life-history
traits of Northwest European flora. Journal of Ecology 96:
1266-1274.

}
\examples{
head(leda_lookup)
}
\keyword{datasets}
