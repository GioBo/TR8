\name{local_storage}
\alias{local_storage}
\title{A utility to storage a local copy of traits data}
\usage{
local_storage(directory = NULL)
}
\arguments{
  \item{directory}{the directory where the local Rda files
  will be stored; default is NULL;}
}
\value{
nothing
}
\description{
local_storage will download traits data from LEDA and
Akhmetzhanova databases and store them in a local folder.
}
\details{
Downloading data from the web is time consuming, thus a
local storage of some traits data will speed up future data
requests; this is possible for LEDA and Akhmetzhanova
databases. The function must be run only once (ideally
before running the \code{tr8} function for the first time):
thanks to the \code{rappdirs} package, the downloaded data
will be stored in the directory commonly used for
\code{user data} (which depends on the Operatim System
where \code{R} is running). Users can change the
destination folder through the \code{directory} parameters,
passing the full path of the directory to be used by the
function.
}
\author{
Gionata Bocci <boccigionata@gmail.com>>
}
