\name{leda}
\alias{leda}
\title{Extracts functional traits from the LEDA traitbase.}
\usage{
leda(species_list, TRAITS,rearranged)
}
\arguments{
  \item{species_list}{a vector containing names of plant
  species}

  \item{TRAITS}{a vector containing the traits to be
  downloaded (used as a check for tr8_gui() created
  variables)}

  \item{rearranged}{ a variable which passes the already downloaded LEDA dataset if this is available (NULL otherwise)}

}
\value{
dataframe containing traits data and species names as
row.names
}
\description{
\code{leda} allows the user to extract data from
\emph{LEDA_df} which is a
\samp{http://www.leda-traitbase.org/LEDAportal/}. subset of
the data available on the LEDA traitbase website
}
\details{
The function returns a data.frame with species as rows and
LEDA functional traits as columns.  \code{NA} will be used
for those traits which do not have values in the LEDA
traitbase.  Species names are converted to \emph{accepted}
names (\emph{sensu} \code{TNRS}).
}
\examples{
\dontrun{

#My_traits<-leda(species_list=c("Abies alba"))
}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\references{
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
\seealso{
\code{leda\_download\_to\_local\_directory}
}

