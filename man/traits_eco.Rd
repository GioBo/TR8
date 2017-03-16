\docType{data}
\name{traits_eco}
\alias{traits_eco}
\title{Set of functional traits to be retrieved by Ecoflora.}
\format{The format is: a list of the following 17 elements, where
each element is a pair of the form "traits":"code used in Ecoflora HTML code":\describe{
 \item{height_max }{: num 3.05}
 \item{height_min }{: num 3.06}
 \item{leaf_area }{: num 3.17}
 \item{leaf_longevity }{: num 3.22}
 \item{Photosynthetic_pathway }{: num 4.02}
 \item{life_form }{: num 5.01}
 \item{Vegetative_reprod_method}{: num 5.05}
 \item{Flowering_earliest_month}{: num 5.07}
 \item{Flowering_latest_month }{: num 5.08}
 \item{Pollen_vector }{: num 5.15}
 \item{Seed_weight_mean }{: num 5.34}
 \item{Method_of_propagation }{: num 5.52}
 \item{Ellenberg_light_Eco }{: num 7.14}
 \item{Ellenberg_moisture_Eco }{: num 7.15}
 \item{Ellenberg_pH_Eco }{: num 7.16}
 \item{Ellenberg_nitrogen_Eco }{: num 7.17}
 \item{Ellenberg_salt_Eco }{: num 7.18}
}}
\description{
\code{traits_eco} defines a list containg pairs in the form
\emph{short_name_of_the_trait} =
\emph{corresponding_code_in_Ecoflora } At the moment the
package does not download all the traits available at
Ecoflora; curious users can expand the number of
downloadable traits simply extending the list with other
'pairs' (take care of using the right \code{Ecoflora codes}
as described in
\samp{http://www.ecoflora.org.uk/search_plantchar.php}).
}
\examples{
\dontrun{
data(traits_eco)
}
}
\references{
Fitter, A . H. and Peat , H. J., 1994, The Ecological Flora Database,
J. Ecol., 82, 415-425.  \samp{http://www.ecoflora.co.uk}
}
\keyword{datasets}

