\name{biolflor_traits-class}
\Rdversion{1.1}
\docType{class}
\alias{biolflor_traits-class}
\alias{extract,biolflor_traits-method}

\title{Class \code{"biolflor_traits"} for containing traits retrieved from Biolflor}
\description{
  This class is used to retrieve traits data from species contained
 in the Biolflor web database
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("biolflor_traits", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{url}:}{Object of class \code{"character"}: url of the corresponding web page for the species of interest}
    \item{\code{extracted}:}{Object of class \code{"list"}  a list of traits}
    \item{\code{list_traits}:}{Object of class \code{"vector"} a vector containing the list of traits which can be downloaded by the package}
    \item{\code{list_special_traits}:}{Object of class \code{"vector"}: some of the traits require special Xpath rules to be extracted, thus a special slots is devoted to them}
  }
}
\section{Methods}{
  \describe{
    \item{extract}{\code{signature(.Object = "biolflor_traits")}: ... }
	 }
}
\references{

  Klotz, S., Kühn, I., Durka, W. (eds) (2002). BIOLFLOR - Eine Datenbank 
zu biologisch-ökologischen Merkmalen zur Flora von Deutschland. 
Schriftenreihe für Vegetationskunde *38*: 1-333.  (Bundesamt für. Bonn, 
Bundesamt für Naturschutz)
}
\author{
Gionata Bocci \email{boccigionata@gmail.com}
}
\note{
  Only a subset of the traits available on BiolFlor will be
  downloaded from \code{TR8}
}

\seealso{
See Also as \code{\link{biolflor}}
}
\examples{
showClass("biolflor_traits")
}
\keyword{classes}
