\name{retrieve_amf}
\alias{retrieve_amf}
\title{retrieve_amf}
\usage{
retrieve_amf(species, TRAITS)
}
\arguments{
  \item{species}{a vector containing names of plant
  species}

  \item{TRAITS}{a vector containing the traits to be
  downloaded (used as a check for tr8_gui() created
  variables)}
}
\value{
a data frame
}
\description{
Retrieve data about AMF potential inoculation for a list of
plant species passed as argument
}
\details{
The returned dataframe comprises one column:
\code{Myco_infection}

\code{Myco_infection} : a numeric vector containing
percentage of infection as provided by Akhmetzhanova et al.
}
\examples{
\dontrun{
##My_traits<-retrieve_amf(species_list=c("Abies alba"))
}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\references{
\itemize{ \item  Akhmetzhanova, A.A, Soudzilovskaia, N.A., Onipchenko, V.G.,
     Cornwell, W. K., Agafonov, V. A., Selivanov, I.A., and
     Cornelissen, J. H. C. (2012): A rediscovered treasure: mycorrhizal
     intensity database for 3000 vascular plants species across the
     former Soviet Union. Ecology 93:689.\samp{http://esapubs.org/Archive/ecol/E093/059/default.htm}
}
}

