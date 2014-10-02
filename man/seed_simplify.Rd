\name{seed_simplify}
\alias{seed_simplify}
\title{seed_simplify a function to shorten levels for seed longevity}
\usage{
seed_simplify(tp)
}
\arguments{
  \item{tp}{: a list obtained from the LEDA traitbase}
}
\value{
a vector
}
\description{
Used to shorten levels of Seed longevity according to LEDA
traitbase
}
\details{
Short codes are obtained adopting the following rules:

\describe{ \item{LT}{"long-term persistent"}
\item{ST}{"short-term persistent"} \item{T}{"transient"}
\item{P}{"present"}}
}
\author{
Gionata Bocci <boccigionata@gmail.com>
}

