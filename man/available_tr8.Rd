\name{available_tr8}
\alias{available_tr8}
\docType{data}
\title{
  A dataframe containing the traits available for download.
}
\description{
  The \code{available_tr8} dataframe can be used as a reference in order
  to know which traits can be downloaded with the \code{TR8} package.
}
\usage{data("available_tr8")}
\format{
  A data frame with the following variables:
  \describe{
    \item{\code{short_code}}{contains the codes that should be used when
    using the \code{tr8()} function}
    \item{\code{description}}{contains a short description of the traits}
    \item{\code{db}}{indicates from which databases the traits will be downloaded}
  }
}
\details{
  This dataframe can be viewed by those users who want to use the
  \code{tr8()} function in a non-interactive way (i.e. not willing to
  use the GUI for selecting traits to be retrieved). The users should
  take note of the \code{short_code} used for the traits of interest,
  since these are the codes that should be passed to \code{tr8} in the
  \code{download_list} parameter.
 }

\examples{
data(available_tr8)
\dontrun{tr8(species_list=c("Salix alba","Populus nigra"),download_list=c("h_max","le_area"))}
}
\keyword{TR8,tr8}
\author{
Gionata Bocci <boccigionata@gmail.com>
}