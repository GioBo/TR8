\name{get_italian_flowering}
\alias{get_italian_flowering}
\title{get_italian_flowering}
\usage{
get_italian_flowering(species_list, TRAITS)
}
\arguments{
  \item{species_list}{: a vector containing species names}

  \item{TRAITS}{a vector containing the traits to be
  downloaded (used as a check for tr8_gui() created
  variables)}
}
\value{
a dataframe with two columns, the beginning and the end
month (expressed as a number from 1 to 12) of the flowering
phase
}
\description{
Gets the beginning and the end of
the flowering phase for the italian flora. Values are based
on Pignatti and retrieved from the
\url{http://luirig.altervista.org/}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\references{
\url{http://luirig.altervista.org/}
}

