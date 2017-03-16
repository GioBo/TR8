\docType{data}
\name{ECOFLORA_df}
\alias{ECOFLORA_df}
\title{\bold{ECOFLORA_df}: local lookup table for Ecoflora species' url(s)}
\format{A data frame containing URL for the species contained in the
Ecoflora web database.  \describe{
\item{species}{a vector containing the species names as defined on Ecoflora website}
\item{web_link}{a character vector containing the URL of each species trait web page}
\item{acceptedname}{a character vector containing the accepted name according to TNRS}
\item{sourceid}{a character vector containing the source used by the \code{taxize::tnrs} function}
\item{score}{a numeric vector containing the score obtained by \code{taxize::tnrs} function}
\item{matchedname}{a character vector containing the matched names by \code{taxize::tnrs}}
%%\item{annotations}{a character vector}
\item{uri}{a character vector containing Ecoflora-URL for each species}}}
\description{
This dataset is not ment to be directly accessed by the
final user. It is imported by the \code{ecoflora()}
function to extrapolate the correct \code{URL} for each
species of interest and download the corresponding
functional traits. This dataset is used as a lookup table
from the \code{ecoflora()} function.
}
\examples{
## observe the data for the first few species
\dontrun{
head(ECOFLORA_df)
}
}
\references{
Please alwasy cite the database according to:

Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora Database, J.
Ecol., 82, 415-425.
}
\keyword{datasets}

