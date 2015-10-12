\name{luirig}
\alias{luirig}
\title{luirig}
\usage{
luirig(url)
}
\arguments{
  \item{url}{a url provided by the function
  \code{get_italian_flowering}}
}
\value{
a tuple of values: beginning and ending of flowering period
(or NA,NA if data are not found)
}
\description{
Downloads flowering dates for Italian
plant species
}
\details{
This function tries to retrieve the months of beginning and
ending of the flowering period for species of the italian
(data are collected form the website
\samp{http://luirig.altervista.org/}).  The function is used by
the \code{get_italian_flowering} function.
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}
\seealso{
\code{get_italian_flowering}
}

