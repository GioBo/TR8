\name{available_traits}
\alias{available_traits}
\title{available_traits shows which traits are available for download}
\usage{
available_traits()
}
\value{
a data frame
}
\description{
The function is meant to help users in showing which traits
(and from which databases) can be downloaded
}
\details{
Users can call the function to see what data are available
for download and decide which one should be passed to the
\code{tr8()} function (in the \code{download_list}
argument); the codes to be used as the \code{download_list}
argument are those contained \code{short_code} column.
}
\examples{
## available_traits()
## If the traits \\code{Maximum area}  and \\code{Leaf area} from
## Ecoflora are needed for the species Salix alba and Populus nigra, type

\donttest{tr8(species_list=c("Salix alba","Populus nigra"),download_list=c("h_max","le_area"))}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\seealso{
tr8
}
