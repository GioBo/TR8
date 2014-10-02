\name{ecoflora}
\alias{ecoflora}
\title{Retrieves traits data from Ecoflora website}
\usage{
ecoflora(species_list, reference = ECOFLORA_df, TRAITS)
}
\arguments{
  \item{species_list}{a vector containing list of plant
  species names.}

  \item{reference}{the reference lookup data.frame (this is
  not ment to be set by users; it is left here for further
  development)}

  \item{TRAITS}{a vector containing the traits to be
  downloaded (used as a check for tr8_gui() created
  variables)}
}
\value{
Return a data.frame with species as rows and traits as
columns. Only those species present in the Ecoflora
database will be included in this data.frame, other species
will be left out.
}
\description{
The function accepts a list of plant species names, tries
to download the corresponding functional traits from the
Ecoflora website (\url{http://www.ecoflora.co.uk/}) and
return a data.frame with species names as rows and
functional traits as columns.
}
\examples{
\dontrun{
#' #My_data<-ecoflora(species_list=c("Abies alba"))
}
}
\author{
Bocci Gionata
}
\references{
Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora
Database, J. Ecol., 82, 415-425.
}
\seealso{
\code{\link{traits_eco}}
}

