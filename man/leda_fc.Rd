\name{leda_fc}
\alias{leda_fc}
\title{
leda_fc
}
\description{
Downloads the mean floating capacity values from LEDA traitbase.
}
\usage{
leda_fc(species_list)
}
\arguments{
  \item{species_list}{a vector of plant species names}
}
\value{
  Returns a dataframe where for each plant species (row) mean values of
  Floating Capacity are reported - if present in the LEDA database - for
  each category of dispersal type.
}
\references{
Kleyer, M., Bekker, R.M., Knevel, I.C., Bakker, J.P,
Thompson, K., Sonnenschein, M., Poschlod, P., Van
Groenendael, J.M., Klimes, L., Klimesova, J., Klotz, S.,
Rusch, G.M., Hermy, M., Adriaens, D., Boedeltje, G.,
Bossuyt, B., Dannemann, A., Endels, P., Götzenberger, L.,
Hodgson, J.G., Jackel, A-K., Kühn, I., Kunzmann, D.,
Ozinga, W.A., Römermann, C., Stadler, M., Schlegelmilch,
J., Steendam, H.J., Tackenberg, O., Wilmann, B., Corneliss
n, J.H.C., Eriksson, O., Garnier, E., Peco, B. (2008): The
LEDA Traitbase: A database of life-history traits of
Northwest European flora. Journal of Ecology 96:1266-1274.
\samp{
http://www.leda-traitbase.org/LEDAportal/data_files.jsp}
}
\author{
 Gionata Bocci <boccigionata@gmail.com>
}
\seealso{
  tr8()
}

\keyword{ LEDA traitbase }% use one of  RShowDoc("KEYWORDS")
\keyword{ TR8 }% __ONLY ONE__ keyword per line
