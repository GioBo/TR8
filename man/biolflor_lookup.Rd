\docType{data}
\name{biolflor_lookup}
\alias{biolflor_lookup}
\title{biolflor_lookup}
\format{A data frame with 3688 observations on the following 8 variables.
\describe{
\item{submittedname}{a character vector containing the original species'
names as used in BiolFlor}
\item{acceptedname}{a character vector containing the
  \code{acceptedanme} according to the \code{tnrs} function}
\item{sourceid}{a character vector; all the names are checked against
  the \code{iPlant\_TNRS} database}
\item{score}{a character vector expressing the \code{score} for matching
\code{submitted} and \code{accepted} names}
\item{matchedname}{name \code{matched} by the \code{tnrs} function}
%% \item{annotations}{a character vector}
%% \item{V1}{a character vector}
\item{V2}{url of the BiolFlor web page for the species of interest} }}
\usage{
biolflor_lookup
}
\description{
This dataframe is used to retrieve species URLs from the
BiolFlor website
(\url{http://www2.ufz.de/biolflor/index.jsp}).
}
\examples{
head(biolflor_lookup)
}
\references{
Please use the follow citation ay time you use data derived
from Biolflor:

Klotz, S., Kühn, I., Durka, W. (eds) (2002). BIOLFLOR - Eine Datenbank 
zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. 
Schriftenreihe für Vegetationskunde *38*: 1-333.  (Bundesamt für. Bonn, 
Bundesamt für Naturschutz)
}
\keyword{datasets}

