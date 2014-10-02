\name{ellenberg_pignatti-class}
\Rdversion{1.1}
\docType{class}
\alias{ellenberg_pignatti-class}
\alias{get_traits,ellenberg_pignatti-method}

\title{Class \code{"ellenberg_pignatti"} to contain ellenberg values for
Italian Flora's species}
\description{
The class is used to extract data from a database which contains traits
data for species belonging to the italian flora.

}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("ellenberg_pignatti", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{species_list}:}{Object of class \code{"vector"} a vector
    of plant species names}
    \item{\code{results}:}{Object of class \code{"data.frame"}
      containing the results of the queries}
    \item{\code{not_valid}:}{Object of class \code{"vector"} containing
      names of 'problematic' species}
  }
}
\section{Methods}{
  \describe{
    \item{get_traits}{\code{signature(.Object = "ellenberg_pignatti")}: ... }
	 }
}
\references{
Pignatti S., Menegoni P., Pietrosanti S., 2005, Biondicazione
attraverso le piante vascolari. Valori di indicazione secondo Ellenberg
(Zeigerwerte) per le specie della Flora d'Italia. Braun-Blanquetia 39,
Camerino, pp.  97.
}
\author{
Gionata Bocci \email{boccigionata@gmail.com}
}

\seealso{See Also as \code{\link{pignatti_f}}
}
\examples{
showClass("ellenberg_pignatti")
}
\keyword{classes}
