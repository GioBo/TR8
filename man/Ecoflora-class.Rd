\name{Ecoflora-class}
\Rdversion{1.1}
\docType{class}
\alias{Ecoflora-class}
\alias{initialize,Ecoflora-method}
\alias{retrieve,Ecoflora-method}

\title{Class \code{"Ecoflora"}: Class containing traits from Ecological Flora of the british Isles}
\description{
  The class is a box containing url and traits data for species
  which are present in the Ecoflora website

}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Ecoflora", species_list, reference, traits)}.
}
\section{Slots}{
  \describe{
    \item{\code{species_list}:}{Object of class \code{"vector"} a list of species for which traits data are to be searched}
    \item{\code{reference}:}{Object of class \code{"data.frame"} a data frame containing web pages of the searched species}
    \item{\code{df}:}{Object of class \code{"data.frame"} a temporary df}
    \item{\code{not_valid}:}{Object of class \code{"vector"} species whose name were not present in the Ecoflora database}
    \item{\code{results}:}{Object of class \code{"data.frame"} dataframe containing scraped traits }
    \item{\code{traits}:}{Object of class \code{"list"} codes for the traits to be searched }
    \item{\code{double_names}:}{Object of class \code{"vector"} species for which more than one name was found }
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "Ecoflora")}: when
      initialized, some slots will be "cleaned" }
    \item{retrieve}{\code{signature(.Object = "Ecoflora")}: instructions
    to scrape data from the website}
	 }
}
\references{
Fitter, A . H. and Peat , H. J. (1994). The Ecological Flora Database, J. Ecol., 82, 415-425.
}
\author{
 Gionata Bocci \email{boccigionata@gmail.com}
}
\note{
 Not all species listed on the Ecoflora website have all the listed traits.
}


\seealso{
  See Also \code{\link{ecoflora}}
}
\examples{
showClass("Ecoflora")
}
\keyword{classes}
