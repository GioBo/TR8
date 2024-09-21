\name{biolflor}
\alias{biolflor}
\title{Retrieve traits data from the BiolFlor website.}
\usage{
biolflor(list_species,TRAITS)
}
\arguments{
  \item{list_species}{vector containing names of those
  plant species for which traits data need to be
  downloaded.}

  \item{TRAITS}{a vector containing the traits to be
  downloaded (used as a check for tr8_gui() created
  variables)}
}
\value{
dataframe with species name in row and traits data in
column.
}
\description{

  As of September 2024 Biolflor is no more available on-line.
  The current function is left here as a reference for future
  releases (in case the database is made available again.)
This function allows the user to download some pre-defined
traits from the BiolFlor website: the function returs a
dataframe with species name in row and traits data in
column.
}
\examples{
\dontrun{
biolflor(c("Abies alba"))
}
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
\keyword{traits}
