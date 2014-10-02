\docType{data}
\name{biolflor_check}
\alias{biolflor_check}
\title{biolflor_check}
\format{A data frame with 3688 observations on the following 8 variables.
\describe{
\item{submittedname}{name of plant species submitted to \code{tnrs}}
\item{acceptedname}{accepted name according to \code{tnrs}}
\item{sourceid}{sourceid according to \code{tnrs}}
\item{score}{score of matching species names according to \code{tnrs}}
\item{matchedname}{matched name according to \code{tnrs}}
\item{annotations}{plat species authors}
\item{uri}{url for the plant species on the \code{tnrs} website}
 }}
\description{
A lookup dataframe for checking species names on the
Biolflor website confronting them with the \code{tnrs}
function
}
\examples{
## See the first lines of the data frame 
head(biolflor_check)
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\references{
Please use the follow citation ay time you use data derived
from Biolflor:


Klotz, S., Kühn, I., Durka, W. (eds) (2002). BIOLFLOR - Eine Datenbank 
zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. 
Schriftenreihe für Vegetationskunde *38*: 1-333.  (Bundesamt für. Bonn, 
Bundesamt für Naturschutz)
}
\keyword{dataframe}

