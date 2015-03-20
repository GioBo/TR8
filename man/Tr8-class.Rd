\name{Tr8-class}
\Rdversion{1.1}
\docType{class}
\alias{Tr8-class}
\alias{bib,Tr8-method}
\alias{bib}
\alias{issues,Tr8-method}
\alias{issues}
\alias{lookup,Tr8-method}
\alias{lookup}
\alias{show,Tr8-method}
\alias{extract_traits}
\alias{extract_traits,Tr8-method}


\title{Class \code{"Tr8"}}
\description{
Class Tr8 is used as a "containter" for all other functions and classes
needed to download traits data from various databases
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Tr8", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{species_list}:}{Object of class \code{"vector"} list of species for which traits data are to be searched}
    \item{\code{results}:}{Object of class \code{"data.frame"} dataframe containing scraped traits}
    \item{\code{not_valid}:}{Object of class \code{"vector"} species whose name were not present in the Ecoflora database}
    \item{\code{double_names}:}{Object of class \code{"vector"} species for which more than one name was found}
  }
}
\section{Methods}{
  \describe{
    \item{bib}{\code{signature(.Object = "Tr8")}: method to get bibliographic references for the downloaded data }
    \item{issues}{\code{signature(.Object = "Tr8")}: method to underline
      'problematic' species}
    \item{extract_traits}{\code{signature(object = "Tr8")}: method to
      extract the object@results dataframe from a Tr8 object }
    \item{lookup}{\code{signature(.Object = "Tr8")}: a method to show  brief reference for the downloaded data }
    \item{issues}{\code{signature(.Object = "Tr8")}: method to print
      species names for which data retrieval was problematic
      (e.g. double entries in remote databases).}

        %% \item{show}{\code{signature(object = "Tr8")}: pretty printig for the
    %% retrieved data}
	 }
}


\author{
 Gionata Bocci \email{boccigionata@gmail.com}
}
\note{
  Additional datasets may be added in future.
}


\seealso{
 \code{\link{tr8}}
}
\examples{
## the bib() methods let the user have the exact
## bibliographic citations to be used for the
## retrieved data

## download some trait data for Abies alba

My_traits<-tr8(species_list=c("Abies alba"),download_list=c("life_form_P"))

## See what citations should be used for the data
## bib(My_traits)

## to see a short explanation for the codes used to identify
## the traits use lookup()

lookup(My_traits)

}
\keyword{classes}