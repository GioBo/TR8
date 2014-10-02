\docType{data}
\name{LEDA_df}
\alias{LEDA_df}
\title{\bold{LEDA_df} : local (partial) copy of the LEDA traitbase website.}
\format{A data frame containing traits data for 8309 species.  \describe{
\item{SBS.name}{species name as used in LEDA}
\item{canopy_height.m}{: canopy hight expressed in meters}
\item{mean.SLA..mm.2.mg.}{: mean value for specific leaf area expressed in \emph{mm^2 mm^-1}}
\item{mean.SM..mg.}{: seed mass in \code{g}}
\item{plant.growth.form}{: plant growth form }
\item{dispersal.type}{: dispersal type categories}
\item{acceptedname}{: accepted name according to \emph{TNRS}}
\item{seed_longevity}{: longevity of the seedbank}
\item{sourceid}{: source of species name used by \code{taxize::tnrs}}
\item{score}{: score obtained by  \code{taxize::tnrs}}
\item{matchedname}{: matched name obtained by \code{taxize::tnrs}}
\item{annotations}{: }
\item{uri}{: reference \code{url} for the species} }}
\description{
This data.frame includes a local copy of (some) of the
parameters available on the LEDA website; up to now only
few functional traits were taken into account.  Hopefully
the database will be extendend in the following releases of
the package.  Please refer to
\url{http://www.leda-traitbase.org/LEDAportal/plantTraits.jsp}
for a detailed explanation of the traits availabe
(definitions, units of measure, etc...) in LEDA.
}
\details{
The original datasets are available as .TXT files in they
raw form at
\url{http://www.leda-traitbase.org/LEDAportal/data_files.jsp};
what is found here is a selection of a few traits.  A
higher number of traits from LEDA may be included in the
following releases of the package.
}
\examples{
\dontrun{
data(LEDA_df)
}
}
\references{
Please cite the following reference any time you use data
retrieved from the LEDA traitbase (citation reported at
\url{http://www.leda-traitbase.org/LEDAportal/citation.jsp}):

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
\keyword{datasets}

