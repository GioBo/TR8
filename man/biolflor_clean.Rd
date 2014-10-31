\name{biolflor_clean}
\alias{biolflor_clean}
\title{Removes redundant text in traits collected from Biolflor}
\usage{
biolflor_clean(input)
}
\arguments{
  \item{input}{a intermediate dataframe retrieved by
  \code{tr8()}}
}
\value{
a dataframe with shortened names for the traits levels'
values
}
\description{
BiolFlor tables contains brief explanations of traits: that
is ok for the website but tends to produce clumsy tables in
dataframes returned by tr8(), thus this extra-text is
removed (to improve readibility of such tables).  This
function is internally used by \code{tr8()}, users do not
need to run it.
}
\examples{
\donttest{
bolflor_clean(biolflor("Avena sativa"))
}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\seealso{
\code{\link{biolflor}}
}
\keyword{traits}

