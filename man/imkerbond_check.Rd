\docType{data}
\name{imkerbond_check}
\alias{imkerbond_check}
\title{Set of plant species names to be corrected.}
\format{The format is: a list of pairs of plant species names, each pair
  contains the original name and the corrected name.
}
\description{
\code{imkerbond_check} defines a list containg pairs in the form
\emph{original plant species names in the retrieved data} =
\emph{corrected names}.
This list is used from the \emph{tr8} function to correct the wrong
plant species names found in the original dataset retrieved from the
\samp{http://users.telenet.be/imkerbondzoersel/bijenplanten.html} website.
}
\examples{
## observe the sructure of the dataset
str(imkerbond_check)
}
\references{
\samp{http://users.telenet.be/imkerbondzoersel/bijenplanten.html}
}
\keyword{datasets}

