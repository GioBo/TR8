\name{ref_PLANTS}
\alias{ref_PLANTS}
\docType{data}
\title{
ref_PLANTS
}
\description{
Contains species names without outhors which correspond to the ones in
PLANTS traitbase.
}
\usage{data("ref_PLANTS")}
\format{

  \describe{
    \item{\code{Scientific.Name}}{: this is the name used in the
    original dataset}
    \item{\code{acceptedname}}{the accepted name of the species used
    obtained using \code{taxize::tnrs}}
    \item{\code{score}}{: score for the species names' matching, returned by \code{taxize::tnrs}}
    \item{\code{matchedname}}{: the matched named returned by \code{taxize::tnrs}}
    \item{\code{authority}}{: species authors' names}
    \item{\code{Symbol}}{: code used in the original dataset}
    \item{\code{Synonym.Symbol}}{: code used in the original dataset}
  }
}
\details{
 This dataframe is not meant to be managed by users: it serves as a
    lookup table for the \code{tr8} function in order to speed-up data retrieval
}
\source{
\samp{http://www.bricol.net/}
}
\references{
\samp{http://www.bricol.net/}
}
\examples{

data(ref_PLANTS)

}
\keyword{datasets}
